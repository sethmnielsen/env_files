import cv2 as cv
from IPython.core.debugger import Pdb

def corner_tracking(cap):
        # params for ShiTomasi corner detection
        feature_params = dict(
                maxCorners=100, qualityLevel=0.01, minDistance=10, blockSize=3)
        # Parameters for lucas kanade optical flow
        lk_params = dict(
                winSize=(15, 15), maxLevel=2, criteria=(
                        cv.TERM_CRITERIA_EPS | cv.TERM_CRITERIA_COUNT, 10, 0.03))
        # Create some random colors
        color = np.random.randint(0, 255, (100, 3))
        # Take first frame and find corners in it
        ret, old_frame = cap.read()
        old_gray = cv.cvtColor(old_frame, cv.COLOR_BGR2GRAY)
        p0 = cv.goodFeaturesToTrack(old_gray, mask=None, **feature_params)
        # Create a mask image for drawing purposes
        mask = np.zeros_like(old_frame)
        while(1):
                ret, frame = cap.read()
                frame_gray = cv.cvtColor(frame, cv.COLOR_BGR2GRAY)
                # calculate optical flow
                p1, st, err = cv.calcOpticalFlowPyrLK(
                        old_gray, frame_gray, p0, None, **lk_params)
                # Select good points
                good_new = p1[st == 1]
                # good_old = p0[st == 1]
                # draw the tracks
                # for i, (new, old) in enumerate(zip(good_new, good_old)):
                for i, (new) in enumerate(good_new):
                        a, b = new.ravel()
                        # mask = cv.line(mask, (a, b), (a,b), color[i].tolist(), 2)
                        frame = cv.circle(frame, (a, b), 5, color[i].tolist(), -1)
                img = cv.add(frame, mask)
                cv.imshow('frame', img)
                k = cv.waitKey(30) & 0xff
                if k == 27:
                        break
                # Now update the previous frame and previous points
                old_gray = frame_gray.copy()
                p0 = good_new.reshape(-1, 1, 2)
        cv.destroyAllWindows()
        cap.release() 

# pdb = Pdb()
# pdb.set_trace()
cap = cv.VideoCapture('/home/seth/Downloads/boat_new.mp4') 

corner_tracking(cap)

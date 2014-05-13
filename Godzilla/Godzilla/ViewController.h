#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController<AVAudioPlayerDelegate>
    - (IBAction)clickRoar:(id)sender;
    @property (strong, nonatomic) AVAudioPlayer *audioPlayer;
@end

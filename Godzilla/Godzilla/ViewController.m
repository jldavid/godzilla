#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController
@synthesize audioPlayer;

- (void)viewDidLoad
{
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"godzilla" ofType:@"mp3"]];
    NSError *error;
    audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
    audioPlayer.delegate = self;
    [audioPlayer prepareToPlay];
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickRoar:(id)sender {
    [audioPlayer play];
}

@end

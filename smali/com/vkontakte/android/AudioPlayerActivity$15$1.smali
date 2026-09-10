.class Lcom/vkontakte/android/AudioPlayerActivity$15$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AudioPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerActivity$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/AudioPlayerActivity$15;

.field private final synthetic val$artist:Landroid/widget/TextView;

.field private final synthetic val$f:Lcom/vkontakte/android/AudioFile;

.field private final synthetic val$title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerActivity$15;Landroid/widget/TextView;Lcom/vkontakte/android/AudioFile;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerActivity$15$1;->this$1:Lcom/vkontakte/android/AudioPlayerActivity$15;

    iput-object p2, p0, Lcom/vkontakte/android/AudioPlayerActivity$15$1;->val$artist:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/vkontakte/android/AudioPlayerActivity$15$1;->val$f:Lcom/vkontakte/android/AudioFile;

    iput-object p4, p0, Lcom/vkontakte/android/AudioPlayerActivity$15$1;->val$title:Landroid/widget/TextView;

    .line 614
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 616
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$15$1;->val$artist:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity$15$1;->val$f:Lcom/vkontakte/android/AudioFile;

    iget-object v1, v1, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$15$1;->val$title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity$15$1;->val$f:Lcom/vkontakte/android/AudioFile;

    iget-object v1, v1, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    return-void
.end method

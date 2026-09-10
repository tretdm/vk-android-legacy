.class Lcom/vkontakte/android/AudioPlayerActivity$26;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerActivity;->setBuffered(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioPlayerActivity;

.field final synthetic val$progr:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerActivity;I)V
    .locals 0

    .prologue
    .line 934
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerActivity$26;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    iput p2, p0, Lcom/vkontakte/android/AudioPlayerActivity$26;->val$progr:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 936
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$26;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerActivity;->access$000(Lcom/vkontakte/android/AudioPlayerActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08006c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iget v1, p0, Lcom/vkontakte/android/AudioPlayerActivity$26;->val$progr:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 937
    return-void
.end method

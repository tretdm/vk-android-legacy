.class Lcom/vkontakte/android/AudioPlayerView$13;
.super Ljava/lang/Object;
.source "AudioPlayerView.java"

# interfaces
.implements Lcom/vkontakte/android/api/AudioGetLyrics$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerView;->updateLyrics()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioPlayerView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerView$13;->this$0:Lcom/vkontakte/android/AudioPlayerView;

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 367
    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 357
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerView$13;->this$0:Lcom/vkontakte/android/AudioPlayerView;

    const v1, 0x7f08007a

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerView$13;->this$0:Lcom/vkontakte/android/AudioPlayerView;

    const v1, 0x7f080078

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 359
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerView$13;->this$0:Lcom/vkontakte/android/AudioPlayerView;

    iget-object v0, v0, Lcom/vkontakte/android/AudioPlayerView;->file:Lcom/vkontakte/android/AudioFile;

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerView$13;->this$0:Lcom/vkontakte/android/AudioPlayerView;

    iget-object v1, v1, Lcom/vkontakte/android/AudioPlayerView;->file:Lcom/vkontakte/android/AudioFile;

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v0, v1, p1}, Lcom/vkontakte/android/cache/AudioCache;->saveLyrics(IILjava/lang/String;)I

    .line 360
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerView$13;->this$0:Lcom/vkontakte/android/AudioPlayerView;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->invalidateOptionsMenu()V

    .line 361
    return-void
.end method

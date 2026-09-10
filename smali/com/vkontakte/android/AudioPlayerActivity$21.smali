.class Lcom/vkontakte/android/AudioPlayerActivity$21;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/AudioGetLyrics$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerActivity;->updateLyrics()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioPlayerActivity;

.field final synthetic val$cur:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 857
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerActivity$21;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    iput-object p2, p0, Lcom/vkontakte/android/AudioPlayerActivity$21;->val$cur:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 871
    return-void
.end method

.method public success(Ljava/lang/String;I)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "lid"    # I

    .prologue
    .line 860
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$21;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/AudioPlayerActivity;->file:Lcom/vkontakte/android/AudioFile;

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->lyricsID:I

    if-eq v0, p2, :cond_0

    .line 865
    :goto_0
    return-void

    .line 861
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$21;->val$cur:Landroid/view/View;

    const v1, 0x7f080075

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 862
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$21;->val$cur:Landroid/view/View;

    const v1, 0x7f080072

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 863
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$21;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/AudioPlayerActivity;->file:Lcom/vkontakte/android/AudioFile;

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity$21;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    iget-object v1, v1, Lcom/vkontakte/android/AudioPlayerActivity;->file:Lcom/vkontakte/android/AudioFile;

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v0, v1, p1}, Lcom/vkontakte/android/cache/AudioCache;->saveLyrics(IILjava/lang/String;)I

    .line 864
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$21;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

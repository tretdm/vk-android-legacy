.class Lcom/vkontakte/android/NewVideoPlayerActivity$13;
.super Ljava/lang/Object;
.source "NewVideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewVideoPlayerActivity;->onUpdatePlaybackPosition(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

.field final synthetic val$sec:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewVideoPlayerActivity;I)V
    .locals 0

    .prologue
    .line 730
    iput-object p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$13;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    iput p2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$13;->val$sec:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const v2, 0x7f0801b9

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 731
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$13;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$2500(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$13;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$1500(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$13;->val$sec:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$13;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$1400(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/api/VideoFile;

    move-result-object v0

    iget v0, v0, Lcom/vkontakte/android/api/VideoFile;->duration:I

    const/16 v1, 0xe10

    if-ge v0, v1, :cond_1

    .line 733
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$13;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "%d:%02d"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$13;->val$sec:I

    div-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$13;->val$sec:I

    rem-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 736
    :goto_0
    return-void

    .line 735
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$13;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "%d:%02d:%02d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$13;->val$sec:I

    div-int/lit16 v3, v3, 0xe10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$13;->val$sec:I

    div-int/lit8 v3, v3, 0x3c

    rem-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$13;->val$sec:I

    rem-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

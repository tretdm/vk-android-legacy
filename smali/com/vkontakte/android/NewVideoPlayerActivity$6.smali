.class Lcom/vkontakte/android/NewVideoPlayerActivity$6;
.super Ljava/lang/Object;
.source "NewVideoPlayerActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/VideoGetById$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewVideoPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$6;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$6;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->onError(I)V

    .line 278
    return-void
.end method

.method public success(Lcom/vkontakte/android/api/VideoFile;)V
    .locals 5
    .param p1, "video"    # Lcom/vkontakte/android/api/VideoFile;

    .prologue
    const/4 v4, 0x0

    .line 258
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Video file = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    if-nez p1, :cond_0

    .line 260
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$6;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    const v1, 0x7f0600df

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 261
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$6;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->finish()V

    .line 273
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$6;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0, p1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$18(Lcom/vkontakte/android/NewVideoPlayerActivity;Lcom/vkontakte/android/api/VideoFile;)V

    .line 265
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$6;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$6;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$19(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/api/VideoFile;

    move-result-object v1

    iget-object v1, v1, Lcom/vkontakte/android/api/VideoFile;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$6;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    const v1, 0x7f08014b

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$6;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    const v1, 0x7f080153

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "%d:%02d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$6;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$19(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/api/VideoFile;

    move-result-object v3

    iget v3, v3, Lcom/vkontakte/android/api/VideoFile;->duration:I

    div-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$6;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v4}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$19(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/api/VideoFile;

    move-result-object v4

    iget v4, v4, Lcom/vkontakte/android/api/VideoFile;->duration:I

    rem-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$6;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$20(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$6;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$19(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/api/VideoFile;

    move-result-object v1

    iget v1, v1, Lcom/vkontakte/android/api/VideoFile;->duration:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 269
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$6;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$12(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    .line 270
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$6;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$21(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$6;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$22(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    goto :goto_0
.end method

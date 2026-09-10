.class Lcom/vkontakte/android/NewVideoPlayerActivity$11;
.super Ljava/lang/Object;
.source "NewVideoPlayerActivity.java"

# interfaces
.implements Lcom/vkontakte/android/VideoGetInfo2$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewVideoPlayerActivity;->loadExtInfo()V
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
    iput-object p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$11;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 363
    return-void
.end method

.method public success(IZILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "_numLikes"    # I
    .param p2, "_isLiked"    # Z
    .param p3, "_numComments"    # I
    .param p4, "aName"    # Ljava/lang/String;
    .param p5, "aPhoto"    # Ljava/lang/String;

    .prologue
    .line 353
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$11;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$15(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/api/VideoFile;

    move-result-object v0

    iput-object p4, v0, Lcom/vkontakte/android/api/VideoFile;->ownerName:Ljava/lang/String;

    .line 355
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$11;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$15(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/api/VideoFile;

    move-result-object v0

    iput-object p5, v0, Lcom/vkontakte/android/api/VideoFile;->ownerPhoto:Ljava/lang/String;

    .line 356
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$11;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0, p1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$34(Lcom/vkontakte/android/NewVideoPlayerActivity;I)V

    .line 357
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$11;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0, p3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$35(Lcom/vkontakte/android/NewVideoPlayerActivity;I)V

    .line 358
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$11;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0, p2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$33(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)V

    .line 359
    return-void
.end method

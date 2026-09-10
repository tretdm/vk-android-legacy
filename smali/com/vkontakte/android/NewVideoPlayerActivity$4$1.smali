.class Lcom/vkontakte/android/NewVideoPlayerActivity$4$1;
.super Ljava/lang/Object;
.source "NewVideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewVideoPlayerActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$4;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewVideoPlayerActivity$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$4$1;->this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$4;

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 259
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$4$1;->this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$4;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity$4;->access$0(Lcom/vkontakte/android/NewVideoPlayerActivity$4;)Lcom/vkontakte/android/NewVideoPlayerActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$15(Lcom/vkontakte/android/NewVideoPlayerActivity;I)V

    .line 260
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSystemUiVisibilityChange "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$4$1;->this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$4;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity$4;->access$0(Lcom/vkontakte/android/NewVideoPlayerActivity$4;)Lcom/vkontakte/android/NewVideoPlayerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->resize()V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$4$1;->this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$4;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity$4;->access$0(Lcom/vkontakte/android/NewVideoPlayerActivity$4;)Lcom/vkontakte/android/NewVideoPlayerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$16(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$4$1;->this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$4;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity$4;->access$0(Lcom/vkontakte/android/NewVideoPlayerActivity$4;)Lcom/vkontakte/android/NewVideoPlayerActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$17(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)V

    .line 271
    :cond_1
    :goto_0
    return-void

    .line 268
    :cond_2
    if-nez p1, :cond_1

    .line 269
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$4$1;->this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$4;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity$4;->access$0(Lcom/vkontakte/android/NewVideoPlayerActivity$4;)Lcom/vkontakte/android/NewVideoPlayerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$12(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    goto :goto_0
.end method

.class Lcom/vkontakte/android/NewVideoPlayerActivity$6$1;
.super Ljava/lang/Object;
.source "NewVideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewVideoPlayerActivity$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$6;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewVideoPlayerActivity$6;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$6$1;->this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$6;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 231
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$6$1;->this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$6;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity$6;->access$0(Lcom/vkontakte/android/NewVideoPlayerActivity$6;)Lcom/vkontakte/android/NewVideoPlayerActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$19(Lcom/vkontakte/android/NewVideoPlayerActivity;I)V

    .line 232
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSystemUiVisibilityChange "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$6$1;->this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$6;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity$6;->access$0(Lcom/vkontakte/android/NewVideoPlayerActivity$6;)Lcom/vkontakte/android/NewVideoPlayerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->resize()V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$6$1;->this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$6;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity$6;->access$0(Lcom/vkontakte/android/NewVideoPlayerActivity$6;)Lcom/vkontakte/android/NewVideoPlayerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$20(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$6$1;->this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$6;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity$6;->access$0(Lcom/vkontakte/android/NewVideoPlayerActivity$6;)Lcom/vkontakte/android/NewVideoPlayerActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$21(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)V

    .line 243
    :cond_1
    :goto_0
    return-void

    .line 240
    :cond_2
    if-nez p1, :cond_1

    .line 241
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$6$1;->this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$6;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity$6;->access$0(Lcom/vkontakte/android/NewVideoPlayerActivity$6;)Lcom/vkontakte/android/NewVideoPlayerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$11(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    goto :goto_0
.end method

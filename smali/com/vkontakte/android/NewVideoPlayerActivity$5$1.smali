.class Lcom/vkontakte/android/NewVideoPlayerActivity$5$1;
.super Ljava/lang/Object;
.source "NewVideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewVideoPlayerActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$5;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewVideoPlayerActivity$5;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$5$1;->this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$5;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 158
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$5$1;->this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$5;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity$5;->access$0(Lcom/vkontakte/android/NewVideoPlayerActivity$5;)Lcom/vkontakte/android/NewVideoPlayerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->resize()V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$5$1;->this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$5;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity$5;->access$0(Lcom/vkontakte/android/NewVideoPlayerActivity$5;)Lcom/vkontakte/android/NewVideoPlayerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$17(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$5$1;->this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$5;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity$5;->access$0(Lcom/vkontakte/android/NewVideoPlayerActivity$5;)Lcom/vkontakte/android/NewVideoPlayerActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$18(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)V

    .line 168
    :cond_1
    :goto_0
    return-void

    .line 165
    :cond_2
    if-nez p1, :cond_1

    .line 166
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$5$1;->this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$5;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity$5;->access$0(Lcom/vkontakte/android/NewVideoPlayerActivity$5;)Lcom/vkontakte/android/NewVideoPlayerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$9(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    goto :goto_0
.end method

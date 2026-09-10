.class Lcom/vkontakte/android/NewVideoPlayerActivity$12;
.super Ljava/lang/Object;
.source "NewVideoPlayerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewVideoPlayerActivity;->startFile()V
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
    iput-object p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$12;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 397
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$12;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$15(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/api/VideoFile;

    move-result-object v1

    iget-object v0, v1, Lcom/vkontakte/android/api/VideoFile;->url240:Ljava/lang/String;

    .line 398
    .local v0, "url":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 412
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$12;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->initPlayer(Ljava/lang/String;)V

    .line 413
    return-void

    .line 400
    :pswitch_0
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$12;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$15(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/api/VideoFile;

    move-result-object v1

    iget-object v0, v1, Lcom/vkontakte/android/api/VideoFile;->url240:Ljava/lang/String;

    .line 401
    goto :goto_0

    .line 403
    :pswitch_1
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$12;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$15(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/api/VideoFile;

    move-result-object v1

    iget-object v0, v1, Lcom/vkontakte/android/api/VideoFile;->url360:Ljava/lang/String;

    .line 404
    goto :goto_0

    .line 406
    :pswitch_2
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$12;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$15(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/api/VideoFile;

    move-result-object v1

    iget-object v0, v1, Lcom/vkontakte/android/api/VideoFile;->url480:Ljava/lang/String;

    .line 407
    goto :goto_0

    .line 409
    :pswitch_3
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$12;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$15(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/api/VideoFile;

    move-result-object v1

    iget-object v0, v1, Lcom/vkontakte/android/api/VideoFile;->url720:Ljava/lang/String;

    goto :goto_0

    .line 398
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

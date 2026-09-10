.class Lcom/vkontakte/android/NewVideoPlayerActivity$6;
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
    iput-object p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$6;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 202
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$6;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$13(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/api/VideoFile;

    move-result-object v1

    iget-object v0, v1, Lcom/vkontakte/android/api/VideoFile;->url240:Ljava/lang/String;

    .line 203
    .local v0, "url":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 217
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$6;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->initPlayer(Ljava/lang/String;)V

    .line 218
    return-void

    .line 205
    :pswitch_0
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$6;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$13(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/api/VideoFile;

    move-result-object v1

    iget-object v0, v1, Lcom/vkontakte/android/api/VideoFile;->url240:Ljava/lang/String;

    .line 206
    goto :goto_0

    .line 208
    :pswitch_1
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$6;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$13(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/api/VideoFile;

    move-result-object v1

    iget-object v0, v1, Lcom/vkontakte/android/api/VideoFile;->url360:Ljava/lang/String;

    .line 209
    goto :goto_0

    .line 211
    :pswitch_2
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$6;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$13(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/api/VideoFile;

    move-result-object v1

    iget-object v0, v1, Lcom/vkontakte/android/api/VideoFile;->url480:Ljava/lang/String;

    .line 212
    goto :goto_0

    .line 214
    :pswitch_3
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$6;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$13(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/api/VideoFile;

    move-result-object v1

    iget-object v0, v1, Lcom/vkontakte/android/api/VideoFile;->url720:Ljava/lang/String;

    goto :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

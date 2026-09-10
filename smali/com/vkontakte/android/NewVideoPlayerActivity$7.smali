.class Lcom/vkontakte/android/NewVideoPlayerActivity$7;
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
    iput-object p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 368
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$19(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/api/VideoFile;

    move-result-object v1

    iget-object v0, v1, Lcom/vkontakte/android/api/VideoFile;->url240:Ljava/lang/String;

    .line 369
    .local v0, "url":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 383
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1, p2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$23(Lcom/vkontakte/android/NewVideoPlayerActivity;I)V

    .line 384
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->initPlayer(Ljava/lang/String;)V

    .line 385
    return-void

    .line 371
    :pswitch_0
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$19(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/api/VideoFile;

    move-result-object v1

    iget-object v0, v1, Lcom/vkontakte/android/api/VideoFile;->url240:Ljava/lang/String;

    .line 372
    goto :goto_0

    .line 374
    :pswitch_1
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$19(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/api/VideoFile;

    move-result-object v1

    iget-object v0, v1, Lcom/vkontakte/android/api/VideoFile;->url360:Ljava/lang/String;

    .line 375
    goto :goto_0

    .line 377
    :pswitch_2
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$19(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/api/VideoFile;

    move-result-object v1

    iget-object v0, v1, Lcom/vkontakte/android/api/VideoFile;->url480:Ljava/lang/String;

    .line 378
    goto :goto_0

    .line 380
    :pswitch_3
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$19(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/api/VideoFile;

    move-result-object v1

    iget-object v0, v1, Lcom/vkontakte/android/api/VideoFile;->url720:Ljava/lang/String;

    goto :goto_0

    .line 369
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

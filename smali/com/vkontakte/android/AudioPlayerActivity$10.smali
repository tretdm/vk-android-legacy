.class Lcom/vkontakte/android/AudioPlayerActivity$10;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioPlayerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerActivity$10;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 236
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$10;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerActivity;->access$3(Lcom/vkontakte/android/AudioPlayerActivity;)V

    .line 239
    :cond_0
    return-void
.end method

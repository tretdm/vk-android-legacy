.class Lcom/vkontakte/android/NewVideoPlayerActivity$19$2;
.super Ljava/lang/Object;
.source "NewVideoPlayerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewVideoPlayerActivity$19;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$19;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewVideoPlayerActivity$19;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$19$2;->this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$19;

    .line 725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 728
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$19$2;->this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$19;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity$19;->access$0(Lcom/vkontakte/android/NewVideoPlayerActivity$19;)Lcom/vkontakte/android/NewVideoPlayerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->finish()V

    .line 729
    return-void
.end method

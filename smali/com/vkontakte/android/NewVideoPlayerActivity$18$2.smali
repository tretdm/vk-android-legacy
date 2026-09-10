.class Lcom/vkontakte/android/NewVideoPlayerActivity$18$2;
.super Ljava/lang/Object;
.source "NewVideoPlayerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewVideoPlayerActivity$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$18;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewVideoPlayerActivity$18;)V
    .locals 0

    .prologue
    .line 933
    iput-object p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$18$2;->this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 936
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$18$2;->this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$18;

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity$18;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->finish()V

    .line 937
    return-void
.end method

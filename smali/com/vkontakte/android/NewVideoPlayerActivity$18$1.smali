.class Lcom/vkontakte/android/NewVideoPlayerActivity$18$1;
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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$18$1;->this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$18;

    .line 936
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 939
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$18$1;->this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$18;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity$18;->access$0(Lcom/vkontakte/android/NewVideoPlayerActivity$18;)Lcom/vkontakte/android/NewVideoPlayerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->finish()V

    .line 940
    return-void
.end method

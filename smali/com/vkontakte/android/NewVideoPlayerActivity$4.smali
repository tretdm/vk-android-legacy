.class Lcom/vkontakte/android/NewVideoPlayerActivity$4;
.super Ljava/lang/Object;
.source "NewVideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewVideoPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

.field final synthetic val$root:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewVideoPlayerActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$4;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    iput-object p2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$4;->val$root:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$4;->val$root:Landroid/view/View;

    new-instance v1, Lcom/vkontakte/android/NewVideoPlayerActivity$4$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$4$1;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity$4;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 270
    return-void
.end method

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

.field private final synthetic val$root:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewVideoPlayerActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$4;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    iput-object p2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$4;->val$root:Landroid/view/View;

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/NewVideoPlayerActivity$4;)Lcom/vkontakte/android/NewVideoPlayerActivity;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$4;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$4;->val$root:Landroid/view/View;

    new-instance v1, Lcom/vkontakte/android/NewVideoPlayerActivity$4$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$4$1;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity$4;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 273
    return-void
.end method

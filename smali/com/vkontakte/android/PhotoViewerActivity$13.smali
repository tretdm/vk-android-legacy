.class Lcom/vkontakte/android/PhotoViewerActivity$13;
.super Ljava/lang/Object;
.source "PhotoViewerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoViewerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerActivity$13;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/PhotoViewerActivity$13;)Lcom/vkontakte/android/PhotoViewerActivity;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$13;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$13;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoViewerActivity;->access$1(Lcom/vkontakte/android/PhotoViewerActivity;)Lcom/vkontakte/android/ui/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$13;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoViewerActivity;->access$1(Lcom/vkontakte/android/PhotoViewerActivity;)Lcom/vkontakte/android/ui/ViewPager;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/vkontakte/android/PhotoViewerActivity$13$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PhotoViewerActivity$13$1;-><init>(Lcom/vkontakte/android/PhotoViewerActivity$13;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 450
    return-void

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$13;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    const v1, 0x7f0600d7

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

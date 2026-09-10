.class Lcom/vkontakte/android/ui/ListImageLoaderWrapper$3;
.super Ljava/lang/Object;
.source "ListImageLoaderWrapper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$3;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    iput-object p2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$3;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$3;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$000(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Landroid/widget/AdapterView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 100
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$3;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 101
    const/4 v0, 0x1

    return v0
.end method

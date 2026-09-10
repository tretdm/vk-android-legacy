.class Lcom/vkontakte/android/ui/ListImageLoaderWrapper$1;
.super Ljava/lang/Object;
.source "ListImageLoaderWrapper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field prevPos:D

.field final synthetic this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 53
    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$0(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Landroid/widget/AdapterView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 54
    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$0(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Landroid/widget/AdapterView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    int-to-double v0, v3

    .line 55
    .local v0, "pos":D
    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$0(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Landroid/widget/AdapterView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 56
    .local v2, "topItem":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-double v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-double v5, v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    add-double/2addr v0, v3

    .line 57
    iget-wide v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$1;->prevPos:D

    cmpl-double v3, v0, v3

    if-eqz v3, :cond_1

    .line 59
    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$10(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Ljava/lang/Runnable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 60
    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$0(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Landroid/widget/AdapterView;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$10(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/AdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 61
    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v3, v7}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$3(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;Ljava/lang/Runnable;)V

    .line 63
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$11(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 64
    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v4, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ScrollStopDetector;

    iget-object v5, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-direct {v4, v5, v7}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ScrollStopDetector;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ScrollStopDetector;)V

    invoke-static {v3, v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$3(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;Ljava/lang/Runnable;)V

    .line 65
    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$0(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Landroid/widget/AdapterView;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$10(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v5, 0x96

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/AdapterView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 68
    :cond_1
    iput-wide v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$1;->prevPos:D

    .line 70
    .end local v0    # "pos":D
    .end local v2    # "topItem":Landroid/view/View;
    :cond_2
    const/4 v3, 0x1

    return v3
.end method

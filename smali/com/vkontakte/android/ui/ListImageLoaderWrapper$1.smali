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
    .line 49
    iput-object p1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 53
    iget-object v4, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$000(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Landroid/widget/AdapterView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 54
    iget-object v4, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$000(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Landroid/widget/AdapterView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v4

    int-to-double v1, v4

    .line 55
    .local v1, "pos":D
    const/4 v3, 0x0

    .line 56
    .local v3, "topItem":Landroid/view/View;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$000(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Landroid/widget/AdapterView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 57
    iget-object v4, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$000(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Landroid/widget/AdapterView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 58
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    if-lez v4, :cond_2

    .line 60
    :cond_0
    if-nez v3, :cond_3

    .line 76
    .end local v0    # "i":I
    .end local v1    # "pos":D
    .end local v3    # "topItem":Landroid/view/View;
    :cond_1
    :goto_1
    return v8

    .line 56
    .restart local v0    # "i":I
    .restart local v1    # "pos":D
    .restart local v3    # "topItem":Landroid/view/View;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-double v4, v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    add-double/2addr v1, v4

    .line 62
    iget-wide v4, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$1;->prevPos:D

    cmpl-double v4, v1, v4

    if-eqz v4, :cond_5

    .line 63
    iget-object v4, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v4, v8}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$102(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;Z)Z

    .line 65
    iget-object v4, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$200(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Ljava/lang/Runnable;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 66
    iget-object v4, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$000(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Landroid/widget/AdapterView;

    move-result-object v4

    iget-object v5, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$200(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/AdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 67
    iget-object v4, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v4, v9}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$202(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 69
    :cond_4
    iget-object v4, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$100(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 70
    iget-object v4, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v5, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ScrollStopDetector;

    iget-object v6, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-direct {v5, v6, v9}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ScrollStopDetector;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$1;)V

    invoke-static {v4, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$202(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 71
    iget-object v4, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$000(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Landroid/widget/AdapterView;

    move-result-object v4

    iget-object v5, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$200(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x96

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/AdapterView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    :cond_5
    iput-wide v1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$1;->prevPos:D

    goto :goto_1
.end method

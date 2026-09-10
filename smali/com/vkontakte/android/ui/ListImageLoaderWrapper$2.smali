.class Lcom/vkontakte/android/ui/ListImageLoaderWrapper$2;
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


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$2;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$2;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$0(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Landroid/widget/AdapterView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 85
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$2;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    iget-object v1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$2;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$0(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Landroid/widget/AdapterView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$12(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;I)V

    .line 86
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$2;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    iget-object v1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$2;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$0(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Landroid/widget/AdapterView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$2;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$5(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$13(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;I)V

    .line 87
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$2;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$14(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;Z)V

    .line 88
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$2;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$7(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$2;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$2;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$0(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Landroid/widget/AdapterView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$2;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$0(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Landroid/widget/AdapterView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$13(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;I)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$2;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$4(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Lcom/vkontakte/android/ui/NewListImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/NewListImageLoader;->cancelAll()V

    .line 93
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$2;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$4(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Lcom/vkontakte/android/ui/NewListImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$2;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$5(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$2;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$6(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$2;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$5(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$2;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$7(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$2;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$6(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/NewListImageLoader;->loadRange(II)V

    .line 94
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$2;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$4(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Lcom/vkontakte/android/ui/NewListImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$2;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$5(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$2;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$7(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$2;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$5(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$2;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$7(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/NewListImageLoader;->loadRange(II)V

    .line 95
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$2;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$4(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Lcom/vkontakte/android/ui/NewListImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$2;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$5(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$2;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$6(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$2;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$7(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$2;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$5(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$2;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$7(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/NewListImageLoader;->loadRange(II)V

    .line 96
    const/4 v0, 0x1

    return v0
.end method

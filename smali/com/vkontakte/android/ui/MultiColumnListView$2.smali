.class Lcom/vkontakte/android/ui/MultiColumnListView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MultiColumnListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ui/MultiColumnListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/MultiColumnListView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/MultiColumnListView;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/vkontakte/android/ui/MultiColumnListView$2;->this$0:Lcom/vkontakte/android/ui/MultiColumnListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 82
    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiColumnListView$2;->this$0:Lcom/vkontakte/android/ui/MultiColumnListView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/ui/MultiColumnListView;->access$100(Lcom/vkontakte/android/ui/MultiColumnListView;II)I

    move-result v0

    .line 83
    .local v0, "pos":I
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on down "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiColumnListView$2;->this$0:Lcom/vkontakte/android/ui/MultiColumnListView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/MultiColumnListView;->access$200(Lcom/vkontakte/android/ui/MultiColumnListView;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiColumnListView$2;->this$0:Lcom/vkontakte/android/ui/MultiColumnListView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/MultiColumnListView;->access$200(Lcom/vkontakte/android/ui/MultiColumnListView;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiColumnListView$2;->this$0:Lcom/vkontakte/android/ui/MultiColumnListView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/MultiColumnListView;->access$300(Lcom/vkontakte/android/ui/MultiColumnListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 87
    const/4 v1, 0x1

    .line 91
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 95
    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiColumnListView$2;->this$0:Lcom/vkontakte/android/ui/MultiColumnListView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/ui/MultiColumnListView;->access$100(Lcom/vkontakte/android/ui/MultiColumnListView;II)I

    move-result v0

    .line 96
    .local v0, "pos":I
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on show press "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 98
    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiColumnListView$2;->this$0:Lcom/vkontakte/android/ui/MultiColumnListView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/MultiColumnListView;->access$200(Lcom/vkontakte/android/ui/MultiColumnListView;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiColumnListView$2;->this$0:Lcom/vkontakte/android/ui/MultiColumnListView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/MultiColumnListView;->access$200(Lcom/vkontakte/android/ui/MultiColumnListView;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiColumnListView$2;->this$0:Lcom/vkontakte/android/ui/MultiColumnListView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/MultiColumnListView;->access$300(Lcom/vkontakte/android/ui/MultiColumnListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 100
    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiColumnListView$2;->this$0:Lcom/vkontakte/android/ui/MultiColumnListView;

    invoke-static {v1, v0}, Lcom/vkontakte/android/ui/MultiColumnListView;->access$402(Lcom/vkontakte/android/ui/MultiColumnListView;I)I

    .line 101
    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiColumnListView$2;->this$0:Lcom/vkontakte/android/ui/MultiColumnListView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/MultiColumnListView;->access$500(Lcom/vkontakte/android/ui/MultiColumnListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiColumnListView$2;->this$0:Lcom/vkontakte/android/ui/MultiColumnListView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/MultiColumnListView;->access$500(Lcom/vkontakte/android/ui/MultiColumnListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiColumnListView$2;->this$0:Lcom/vkontakte/android/ui/MultiColumnListView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/MultiColumnListView;->access$500(Lcom/vkontakte/android/ui/MultiColumnListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x10100a7

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiColumnListView$2;->this$0:Lcom/vkontakte/android/ui/MultiColumnListView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/MultiColumnListView;->postInvalidate()V

    .line 107
    :cond_2
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 54
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView$2;->this$0:Lcom/vkontakte/android/ui/MultiColumnListView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/ui/MultiColumnListView;->access$100(Lcom/vkontakte/android/ui/MultiColumnListView;II)I

    move-result v3

    .line 55
    .local v3, "pos":I
    const/4 v0, -0x1

    if-eq v3, v0, :cond_3

    .line 56
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView$2;->this$0:Lcom/vkontakte/android/ui/MultiColumnListView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/MultiColumnListView;->access$200(Lcom/vkontakte/android/ui/MultiColumnListView;)Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView$2;->this$0:Lcom/vkontakte/android/ui/MultiColumnListView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/MultiColumnListView;->access$200(Lcom/vkontakte/android/ui/MultiColumnListView;)Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView$2;->this$0:Lcom/vkontakte/android/ui/MultiColumnListView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/MultiColumnListView;->access$300(Lcom/vkontakte/android/ui/MultiColumnListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 58
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView$2;->this$0:Lcom/vkontakte/android/ui/MultiColumnListView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/MultiColumnListView;->access$300(Lcom/vkontakte/android/ui/MultiColumnListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiColumnListView$2;->this$0:Lcom/vkontakte/android/ui/MultiColumnListView;

    iget-object v2, p0, Lcom/vkontakte/android/ui/MultiColumnListView$2;->this$0:Lcom/vkontakte/android/ui/MultiColumnListView;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/MultiColumnListView;->getItemView(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/vkontakte/android/ui/MultiColumnListView$2;->this$0:Lcom/vkontakte/android/ui/MultiColumnListView;

    invoke-static {v4}, Lcom/vkontakte/android/ui/MultiColumnListView;->access$200(Lcom/vkontakte/android/ui/MultiColumnListView;)Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 59
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView$2;->this$0:Lcom/vkontakte/android/ui/MultiColumnListView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/MultiColumnListView;->access$400(Lcom/vkontakte/android/ui/MultiColumnListView;)I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 60
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView$2;->this$0:Lcom/vkontakte/android/ui/MultiColumnListView;

    invoke-static {v0, v3}, Lcom/vkontakte/android/ui/MultiColumnListView;->access$402(Lcom/vkontakte/android/ui/MultiColumnListView;I)I

    .line 61
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView$2;->this$0:Lcom/vkontakte/android/ui/MultiColumnListView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/MultiColumnListView;->access$500(Lcom/vkontakte/android/ui/MultiColumnListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView$2;->this$0:Lcom/vkontakte/android/ui/MultiColumnListView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/MultiColumnListView;->access$500(Lcom/vkontakte/android/ui/MultiColumnListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView$2;->this$0:Lcom/vkontakte/android/ui/MultiColumnListView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/MultiColumnListView;->access$500(Lcom/vkontakte/android/ui/MultiColumnListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-array v1, v6, [I

    const v2, 0x10100a7

    aput v2, v1, v7

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView$2;->this$0:Lcom/vkontakte/android/ui/MultiColumnListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/MultiColumnListView;->invalidate()V

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView$2;->this$0:Lcom/vkontakte/android/ui/MultiColumnListView;

    new-instance v1, Lcom/vkontakte/android/ui/MultiColumnListView$2$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ui/MultiColumnListView$2$1;-><init>(Lcom/vkontakte/android/ui/MultiColumnListView$2;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v1, v4, v5}, Lcom/vkontakte/android/ui/MultiColumnListView;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v6

    .line 78
    :goto_0
    return v0

    :cond_3
    move v0, v7

    goto :goto_0
.end method

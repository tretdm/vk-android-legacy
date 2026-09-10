.class Lcom/vkontakte/android/ui/ReorderableListView$2;
.super Ljava/lang/Object;
.source "ReorderableListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/ReorderableListView;->handleCellSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/ReorderableListView;

.field final synthetic val$deltaY:I

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;

.field final synthetic val$switchItemID:J

.field final synthetic val$switchViewStartTop:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/ReorderableListView;Landroid/view/ViewTreeObserver;JII)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/vkontakte/android/ui/ReorderableListView$2;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    iput-object p2, p0, Lcom/vkontakte/android/ui/ReorderableListView$2;->val$observer:Landroid/view/ViewTreeObserver;

    iput-wide p3, p0, Lcom/vkontakte/android/ui/ReorderableListView$2;->val$switchItemID:J

    iput p5, p0, Lcom/vkontakte/android/ui/ReorderableListView$2;->val$deltaY:I

    iput p6, p0, Lcom/vkontakte/android/ui/ReorderableListView$2;->val$switchViewStartTop:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 330
    iget-object v4, p0, Lcom/vkontakte/android/ui/ReorderableListView$2;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v4, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 332
    iget-object v4, p0, Lcom/vkontakte/android/ui/ReorderableListView$2;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    iget-wide v5, p0, Lcom/vkontakte/android/ui/ReorderableListView$2;->val$switchItemID:J

    invoke-virtual {v4, v5, v6}, Lcom/vkontakte/android/ui/ReorderableListView;->getViewForID(J)Landroid/view/View;

    move-result-object v2

    .line 334
    .local v2, "switchView":Landroid/view/View;
    iget-object v4, p0, Lcom/vkontakte/android/ui/ReorderableListView$2;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    iget v5, p0, Lcom/vkontakte/android/ui/ReorderableListView$2;->val$deltaY:I

    invoke-static {v4, v5}, Lcom/vkontakte/android/ui/ReorderableListView;->access$012(Lcom/vkontakte/android/ui/ReorderableListView;I)I

    .line 336
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 337
    .local v3, "switchViewNewTop":I
    iget v4, p0, Lcom/vkontakte/android/ui/ReorderableListView$2;->val$switchViewStartTop:I

    sub-int v1, v4, v3

    .line 339
    .local v1, "delta":I
    int-to-float v4, v1

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 341
    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v8, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 343
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 344
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 346
    return v8
.end method

.class Lcom/vkontakte/android/ui/ReorderableListView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ReorderableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/ReorderableListView;->touchEventsEnded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/ReorderableListView;

.field private final synthetic val$mobileView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/ReorderableListView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    iput-object p2, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->val$mobileView:Landroid/view/View;

    .line 385
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const-wide/16 v1, -0x1

    .line 393
    iget-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/ui/ReorderableListView;->access$18(Lcom/vkontakte/android/ui/ReorderableListView;J)V

    .line 394
    iget-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/ui/ReorderableListView;->access$3(Lcom/vkontakte/android/ui/ReorderableListView;J)V

    .line 395
    iget-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/ui/ReorderableListView;->access$19(Lcom/vkontakte/android/ui/ReorderableListView;J)V

    .line 396
    iget-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->val$mobileView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/ReorderableListView;->access$5(Lcom/vkontakte/android/ui/ReorderableListView;Landroid/graphics/drawable/BitmapDrawable;)V

    .line 398
    iget-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ReorderableListView;->setEnabled(Z)V

    .line 399
    iget-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ReorderableListView;->invalidate()V

    .line 400
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ReorderableListView;->setEnabled(Z)V

    .line 389
    return-void
.end method

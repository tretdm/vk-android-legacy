.class Lcom/vkontakte/android/ui/RefreshableListView$1;
.super Ljava/lang/Object;
.source "RefreshableListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/RefreshableListView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/RefreshableListView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/RefreshableListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/RefreshableListView$1;->this$0:Lcom/vkontakte/android/ui/RefreshableListView;

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 322
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView$1;->this$0:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 334
    return-void

    .line 323
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView$1;->this$0:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v2, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 324
    .local v1, "v":Landroid/view/View;
    instance-of v2, v1, Lcom/vkontakte/android/HLRelativeLayout;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/vkontakte/android/HLRelativeLayout;

    .end local v1    # "v":Landroid/view/View;
    invoke-virtual {v1}, Lcom/vkontakte/android/HLRelativeLayout;->deselect()V

    .line 322
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    .restart local v1    # "v":Landroid/view/View;
    :cond_2
    instance-of v2, v1, Lcom/vkontakte/android/HLLinearLayout;

    if-eqz v2, :cond_3

    check-cast v1, Lcom/vkontakte/android/HLLinearLayout;

    .end local v1    # "v":Landroid/view/View;
    invoke-virtual {v1}, Lcom/vkontakte/android/HLLinearLayout;->deselect()V

    goto :goto_1

    .line 326
    .restart local v1    # "v":Landroid/view/View;
    :cond_3
    instance-of v2, v1, Lcom/vkontakte/android/NewsItemView;

    if-eqz v2, :cond_4

    check-cast v1, Lcom/vkontakte/android/NewsItemView;

    .end local v1    # "v":Landroid/view/View;
    invoke-virtual {v1}, Lcom/vkontakte/android/NewsItemView;->deselect()V

    goto :goto_1

    .line 327
    .restart local v1    # "v":Landroid/view/View;
    :cond_4
    instance-of v2, v1, Lcom/vkontakte/android/MessageView;

    if-eqz v2, :cond_5

    check-cast v1, Lcom/vkontakte/android/MessageView;

    .end local v1    # "v":Landroid/view/View;
    invoke-virtual {v1}, Lcom/vkontakte/android/MessageView;->deselect()V

    goto :goto_1

    .line 328
    .restart local v1    # "v":Landroid/view/View;
    :cond_5
    instance-of v2, v1, Lcom/vkontakte/android/ui/DialogEntryView;

    if-eqz v2, :cond_6

    check-cast v1, Lcom/vkontakte/android/ui/DialogEntryView;

    .end local v1    # "v":Landroid/view/View;
    invoke-virtual {v1}, Lcom/vkontakte/android/ui/DialogEntryView;->deselect()V

    goto :goto_1

    .line 329
    .restart local v1    # "v":Landroid/view/View;
    :cond_6
    if-eqz v1, :cond_1

    .line 330
    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 331
    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1
.end method

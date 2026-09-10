.class Lcom/vkontakte/android/fragments/ChatFragment$3;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/ChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ChatFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0

    .prologue
    .line 568
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$3;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 571
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 572
    .local v2, "mid":I
    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment$3;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/ChatFragment;->access$000(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/Message;

    .line 573
    .local v3, "msg":Lcom/vkontakte/android/Message;
    iget v8, v3, Lcom/vkontakte/android/Message;->id:I

    if-ne v8, v2, :cond_0

    .line 574
    iget v7, v3, Lcom/vkontakte/android/Message;->sender:I

    .line 575
    .local v7, "uid":I
    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment$3;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/ChatFragment;->access$2000(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 576
    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment$3;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/ChatFragment;->access$2000(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/UserProfile;

    iget-object v4, v8, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 577
    .local v4, "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment$3;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v8}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v4, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 578
    .local v6, "t":Landroid/widget/Toast;
    const/4 v8, 0x2

    new-array v1, v8, [I

    fill-array-data v1, :array_0

    .line 579
    .local v1, "loc":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 580
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 581
    .local v5, "rect":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment$3;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v8}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 582
    const/16 v8, 0x33

    aget v9, v1, v12

    iget v10, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    aget v10, v1, v13

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    invoke-virtual {v6, v8, v9, v10}, Landroid/widget/Toast;->setGravity(III)V

    .line 583
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 587
    .end local v1    # "loc":[I
    .end local v3    # "msg":Lcom/vkontakte/android/Message;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "rect":Landroid/graphics/Rect;
    .end local v6    # "t":Landroid/widget/Toast;
    .end local v7    # "uid":I
    :cond_1
    return v13

    .line 578
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

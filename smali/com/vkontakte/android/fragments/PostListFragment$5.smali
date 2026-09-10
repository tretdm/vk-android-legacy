.class Lcom/vkontakte/android/fragments/PostListFragment$5;
.super Ljava/lang/Object;
.source "PostListFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostListFragment;->setListViewAppearance(Landroid/widget/ListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PostListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostListFragment;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostListFragment$5;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 234
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v15

    if-nez v15, :cond_2

    .line 235
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/fragments/PostListFragment$5;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    iget-object v15, v15, Lcom/vkontakte/android/fragments/PostListFragment;->list:Landroid/widget/ListView;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v8

    .line 236
    .local v8, "pos":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/fragments/PostListFragment$5;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    invoke-virtual {v15}, Lcom/vkontakte/android/fragments/PostListFragment;->getPostsOffset()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostListFragment$5;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostListFragment;->list:Landroid/widget/ListView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v16

    add-int v15, v15, v16

    if-lt v8, v15, :cond_2

    .line 237
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/fragments/PostListFragment$5;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    iget-object v15, v15, Lcom/vkontakte/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostListFragment$5;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/vkontakte/android/fragments/PostListFragment;->getPostsOffset()I

    move-result v16

    sub-int v16, v8, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostListFragment$5;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostListFragment;->list:Landroid/widget/ListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v17

    sub-int v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/ui/posts/PostDisplayItem;

    .line 238
    .local v9, "sItem":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/fragments/PostListFragment$5;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    iget-object v15, v15, Lcom/vkontakte/android/fragments/PostListFragment;->list:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostListFragment$5;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostListFragment;->list:Landroid/widget/ListView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v16

    sub-int v16, v8, v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 239
    .local v7, "itemView":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v12

    .local v12, "vTop":I
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v16

    add-int v11, v15, v16

    .line 240
    .local v11, "vBtm":I
    move v10, v12

    .local v10, "top":I
    move v1, v11

    .line 241
    .local v1, "btm":I
    const/4 v4, 0x0

    .line 242
    .local v4, "i":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/fragments/PostListFragment$5;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    iget-object v15, v15, Lcom/vkontakte/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/ui/posts/PostDisplayItem;

    .line 243
    .local v6, "item":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    iget v15, v6, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->postID:I

    iget v0, v9, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->postID:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    iget v15, v6, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->postOwnerID:I

    iget v0, v9, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->postOwnerID:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 244
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/fragments/PostListFragment$5;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    invoke-virtual {v15}, Lcom/vkontakte/android/fragments/PostListFragment;->getPostsOffset()I

    move-result v15

    add-int/2addr v15, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostListFragment$5;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostListFragment;->list:Landroid/widget/ListView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v16

    add-int v13, v15, v16

    .line 245
    .local v13, "vpos":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/fragments/PostListFragment$5;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    iget-object v15, v15, Lcom/vkontakte/android/fragments/PostListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v15}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v15

    if-lt v13, v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/fragments/PostListFragment$5;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    iget-object v15, v15, Lcom/vkontakte/android/fragments/PostListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v15}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v15

    if-gt v13, v15, :cond_0

    .line 246
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/fragments/PostListFragment$5;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    iget-object v15, v15, Lcom/vkontakte/android/fragments/PostListFragment;->list:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostListFragment$5;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostListFragment;->list:Landroid/widget/ListView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v16

    sub-int v16, v13, v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 247
    .local v14, "vview":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-static {v10, v15}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 248
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v16

    add-int v15, v15, v16

    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 251
    .end local v13    # "vpos":I
    .end local v14    # "vview":Landroid/view/View;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 253
    .end local v6    # "item":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    :cond_1
    sub-int v3, v12, v10

    .local v3, "extendTop":I
    sub-int v2, v1, v11

    .line 254
    .local v2, "extendBtm":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/fragments/PostListFragment$5;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    invoke-static {v15}, Lcom/vkontakte/android/fragments/PostListFragment;->access$100(Lcom/vkontakte/android/fragments/PostListFragment;)Lcom/vkontakte/android/ui/posts/PostHighlightDrawable;

    move-result-object v15

    iput v2, v15, Lcom/vkontakte/android/ui/posts/PostHighlightDrawable;->extendBottom:I

    .line 255
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/fragments/PostListFragment$5;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    invoke-static {v15}, Lcom/vkontakte/android/fragments/PostListFragment;->access$100(Lcom/vkontakte/android/fragments/PostListFragment;)Lcom/vkontakte/android/ui/posts/PostHighlightDrawable;

    move-result-object v15

    iput v3, v15, Lcom/vkontakte/android/ui/posts/PostHighlightDrawable;->extendTop:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .end local v1    # "btm":I
    .end local v2    # "extendBtm":I
    .end local v3    # "extendTop":I
    .end local v4    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "itemView":Landroid/view/View;
    .end local v8    # "pos":I
    .end local v9    # "sItem":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    .end local v10    # "top":I
    .end local v11    # "vBtm":I
    .end local v12    # "vTop":I
    :cond_2
    :goto_1
    const/4 v15, 0x0

    return v15

    .line 260
    :catch_0
    move-exception v15

    goto :goto_1
.end method

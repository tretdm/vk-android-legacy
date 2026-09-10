.class Lcom/vkontakte/android/NewsView$3;
.super Ljava/lang/Object;
.source "NewsView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewsView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$3;->this$0:Lcom/vkontakte/android/NewsView;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 19
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 205
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    if-nez v14, :cond_0

    .line 206
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/NewsView$3;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v14, v14, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    float-to-int v15, v15

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/vkontakte/android/ui/RefreshableListView;->pointToPosition(II)I

    move-result v7

    .line 207
    .local v7, "pos":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/NewsView$3;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v14}, Lcom/vkontakte/android/NewsView;->getPostsOffset()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/NewsView$3;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v15, v15, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v15}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v15

    add-int/2addr v14, v15

    if-lt v7, v14, :cond_0

    .line 208
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/NewsView$3;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v14}, Lcom/vkontakte/android/NewsView;->access$0(Lcom/vkontakte/android/NewsView;)Ljava/util/ArrayList;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/NewsView$3;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v15}, Lcom/vkontakte/android/NewsView;->getPostsOffset()I

    move-result v15

    sub-int v15, v7, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewsView$3;->this$0:Lcom/vkontakte/android/NewsView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/ui/posts/PostDisplayItem;

    .line 209
    .local v8, "sItem":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/NewsView$3;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v14, v14, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/NewsView$3;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v15, v15, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v15}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v15

    sub-int v15, v7, v15

    invoke-virtual {v14, v15}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 210
    .local v6, "itemView":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v11

    .local v11, "vTop":I
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v14

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v15

    add-int v10, v14, v15

    .line 211
    .local v10, "vBtm":I
    move v9, v11

    .local v9, "top":I
    move v1, v10

    .line 212
    .local v1, "btm":I
    const/4 v4, 0x0

    .line 213
    .local v4, "i":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/NewsView$3;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v14}, Lcom/vkontakte/android/NewsView;->access$0(Lcom/vkontakte/android/NewsView;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_1

    .line 227
    sub-int v3, v11, v9

    .local v3, "extendTop":I
    sub-int v2, v1, v10

    .line 228
    .local v2, "extendBtm":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/NewsView$3;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v14}, Lcom/vkontakte/android/NewsView;->access$4(Lcom/vkontakte/android/NewsView;)Lcom/vkontakte/android/ui/posts/PostHighlightDrawable;

    move-result-object v14

    iput v2, v14, Lcom/vkontakte/android/ui/posts/PostHighlightDrawable;->extendBottom:I

    .line 229
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/NewsView$3;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v14}, Lcom/vkontakte/android/NewsView;->access$4(Lcom/vkontakte/android/NewsView;)Lcom/vkontakte/android/ui/posts/PostHighlightDrawable;

    move-result-object v14

    iput v3, v14, Lcom/vkontakte/android/ui/posts/PostHighlightDrawable;->extendTop:I

    .line 235
    .end local v1    # "btm":I
    .end local v2    # "extendBtm":I
    .end local v3    # "extendTop":I
    .end local v4    # "i":I
    .end local v6    # "itemView":Landroid/view/View;
    .end local v7    # "pos":I
    .end local v8    # "sItem":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    .end local v9    # "top":I
    .end local v10    # "vBtm":I
    .end local v11    # "vTop":I
    :cond_0
    :goto_1
    const/4 v14, 0x0

    return v14

    .line 213
    .restart local v1    # "btm":I
    .restart local v4    # "i":I
    .restart local v6    # "itemView":Landroid/view/View;
    .restart local v7    # "pos":I
    .restart local v8    # "sItem":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    .restart local v9    # "top":I
    .restart local v10    # "vBtm":I
    .restart local v11    # "vTop":I
    :cond_1
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/ui/posts/PostDisplayItem;

    .line 214
    .local v5, "item":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    iget v15, v5, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->postID:I

    iget v0, v8, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->postID:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    iget v15, v5, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->postOwnerID:I

    iget v0, v8, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->postOwnerID:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 215
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/NewsView$3;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v15}, Lcom/vkontakte/android/NewsView;->getPostsOffset()I

    move-result v15

    add-int/2addr v15, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewsView$3;->this$0:Lcom/vkontakte/android/NewsView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v16

    add-int v12, v15, v16

    .line 216
    .local v12, "vpos":I
    const-string v15, "vk"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "vpos "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/NewsView$3;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v15, v15, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v15}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v15

    if-lt v12, v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/NewsView$3;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v15, v15, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v15}, Lcom/vkontakte/android/ui/RefreshableListView;->getLastVisiblePosition()I

    move-result v15

    if-gt v12, v15, :cond_2

    .line 218
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/NewsView$3;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v15, v15, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewsView$3;->this$0:Lcom/vkontakte/android/NewsView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v16

    sub-int v16, v12, v16

    invoke-virtual/range {v15 .. v16}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 219
    .local v13, "vview":Landroid/view/View;
    const-string v15, "vk"

    const-string v16, "in get view"

    invoke-static/range {v15 .. v16}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v15, "vk"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "top="

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", vtop="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", btm="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", vbtm="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v17

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v18

    add-int v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-static {v9, v15}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 222
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v16

    add-int v15, v15, v16

    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 225
    .end local v12    # "vpos":I
    .end local v13    # "vview":Landroid/view/View;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 234
    .end local v1    # "btm":I
    .end local v4    # "i":I
    .end local v5    # "item":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    .end local v6    # "itemView":Landroid/view/View;
    .end local v7    # "pos":I
    .end local v8    # "sItem":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    .end local v9    # "top":I
    .end local v10    # "vBtm":I
    .end local v11    # "vTop":I
    :catch_0
    move-exception v14

    goto/16 :goto_1
.end method

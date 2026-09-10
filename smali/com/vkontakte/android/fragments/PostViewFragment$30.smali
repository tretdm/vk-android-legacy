.class Lcom/vkontakte/android/fragments/PostViewFragment$30;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/WallGetComments$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostViewFragment;->loadComments(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

.field private final synthetic val$clear:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    iput-boolean p2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->val$clear:Z

    .line 1169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1245
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$41(Lcom/vkontakte/android/fragments/PostViewFragment;Z)V

    .line 1246
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$10(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 1247
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const v0, 0x7f060051

    :goto_0
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1248
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$40(Lcom/vkontakte/android/fragments/PostViewFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 1249
    return-void

    .line 1247
    :cond_0
    const v0, 0x7f06004e

    goto :goto_0
.end method

.method public success(ILjava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 11
    .param p1, "total"    # I
    .param p4, "likesCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/NewsComment;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1172
    .local p2, "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsComment;>;"
    .local p3, "likes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v8}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    if-nez v8, :cond_1

    .line 1241
    :cond_0
    :goto_0
    return-void

    .line 1173
    :cond_1
    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$40(Lcom/vkontakte/android/fragments/PostViewFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 1174
    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$41(Lcom/vkontakte/android/fragments/PostViewFragment;Z)V

    .line 1175
    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$42(Lcom/vkontakte/android/fragments/PostViewFragment;J)V

    .line 1178
    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v8

    iput p1, v8, Lcom/vkontakte/android/NewsEntry;->numComments:I

    .line 1179
    const/4 v8, -0x1

    if-eq p4, v8, :cond_2

    iget-boolean v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->val$clear:Z

    if-eqz v8, :cond_2

    .line 1180
    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$7(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1181
    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$7(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1182
    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v8}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "userphoto"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1183
    .local v7, "userphoto":Ljava/lang/String;
    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$7(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1184
    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v8

    iput p4, v8, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 1185
    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$43(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    .line 1186
    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$1(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    .line 1188
    .end local v7    # "userphoto":Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$35(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    .line 1196
    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$10(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v2

    .line 1197
    .local v2, "firstVisible":I
    const/4 v4, -0x1

    .line 1198
    .local v4, "itemOffset":I
    if-nez v2, :cond_6

    .line 1199
    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$10(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v8

    const/4 v9, 0x2

    if-le v8, v9, :cond_3

    .line 1200
    add-int/lit8 v2, v2, 0x1

    .line 1201
    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$10(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1212
    :cond_3
    :goto_1
    sget-object v8, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 1213
    .local v5, "metrics":Landroid/util/DisplayMetrics;
    iget v8, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/high16 v9, 0x42be0000    # 95.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    sub-int v6, v8, v9

    .line 1214
    .local v6, "tSize":I
    const/16 v8, 0x25c

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1215
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_7

    .line 1220
    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$44(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/widget/ProgressBar;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 1221
    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$44(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/widget/ProgressBar;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$44(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/widget/ProgressBar;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1222
    :cond_4
    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$10(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 1223
    iget-boolean v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->val$clear:Z

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$2(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1224
    :cond_5
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v3, v8, :cond_8

    .line 1229
    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$2(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 1230
    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$2(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le p1, v8, :cond_9

    .line 1231
    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$5(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/LoadMoreCommentsView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/LoadMoreCommentsView;->setVisibility(I)V

    .line 1232
    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$5(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/LoadMoreCommentsView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/LoadMoreCommentsView;->showProgress(Z)V

    .line 1233
    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$5(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/LoadMoreCommentsView;

    move-result-object v8

    iget-object v9, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$2(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int v9, p1, v9

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/LoadMoreCommentsView;->setNumComments(I)V

    .line 1237
    :goto_4
    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$13(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    .line 1238
    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$2(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/16 v9, 0xa

    if-le v8, v9, :cond_0

    .line 1239
    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$10(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v8

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v8, v9, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelectionFromTop(II)V

    goto/16 :goto_0

    .line 1205
    .end local v3    # "i":I
    .end local v5    # "metrics":Landroid/util/DisplayMetrics;
    .end local v6    # "tSize":I
    :cond_6
    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$10(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_3

    .line 1206
    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$10(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v4

    goto/16 :goto_1

    .line 1215
    .restart local v5    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v6    # "tSize":I
    :cond_7
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsComment;

    .line 1216
    .local v0, "c":Lcom/vkontakte/android/NewsComment;
    int-to-float v9, v6

    const v10, 0x3f2a7efa    # 0.666f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iget-object v10, v0, Lcom/vkontakte/android/NewsComment;->attachments:Ljava/util/ArrayList;

    invoke-static {v6, v9, v10}, Lcom/vkontakte/android/ZhukovLayout;->processThumbs(IILjava/util/ArrayList;)V

    goto/16 :goto_2

    .line 1225
    .end local v0    # "c":Lcom/vkontakte/android/NewsComment;
    .restart local v3    # "i":I
    :cond_8
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsComment;

    .line 1226
    .local v1, "comm":Lcom/vkontakte/android/NewsComment;
    iget-object v8, v1, Lcom/vkontakte/android/NewsComment;->text:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/vkontakte/android/NewsComment;->setText(Ljava/lang/String;)V

    .line 1227
    invoke-virtual {p2, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1224
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 1235
    .end local v1    # "comm":Lcom/vkontakte/android/NewsComment;
    :cond_9
    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$5(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/LoadMoreCommentsView;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/LoadMoreCommentsView;->setVisibility(I)V

    goto :goto_4
.end method

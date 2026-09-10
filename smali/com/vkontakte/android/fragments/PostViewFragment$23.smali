.class Lcom/vkontakte/android/fragments/PostViewFragment$23;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostViewFragment;->updateLikePhotos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PostViewFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$23;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    .line 970
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 972
    const-string v4, "vk"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "LikePhotos = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostViewFragment$23;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$6(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment$23;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$8(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/widget/LinearLayout;

    move-result-object v4

    const v7, 0x7f09015a

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 974
    .local v1, "lpwrap":Landroid/widget/LinearLayout;
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment$23;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v7

    const/high16 v8, 0x421c0000    # 39.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    div-int/2addr v7, v8

    invoke-static {v4, v7}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$28(Lcom/vkontakte/android/fragments/PostViewFragment;I)V

    .line 975
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment$23;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$6(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment$23;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    :goto_0
    sub-int v4, v7, v4

    iget-object v7, p0, Lcom/vkontakte/android/fragments/PostViewFragment$23;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$29(Lcom/vkontakte/android/fragments/PostViewFragment;)I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 976
    .local v2, "num":I
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment$23;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    add-int/lit8 v7, v2, -0x1

    invoke-static {v4, v7}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$30(Lcom/vkontakte/android/fragments/PostViewFragment;I)V

    .line 977
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    const/16 v4, 0xa

    if-lt v0, v4, :cond_2

    .line 980
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment$23;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$6(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 1000
    :cond_0
    :goto_2
    return-void

    .line 975
    .end local v0    # "i":I
    .end local v2    # "num":I
    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    .line 978
    .restart local v0    # "i":I
    .restart local v2    # "num":I
    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-ge v0, v2, :cond_3

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 977
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v4, v6

    .line 978
    goto :goto_3

    .line 981
    :cond_4
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment$23;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 982
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 983
    const/4 v3, 0x0

    .line 984
    .local v3, "numVisible":I
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-lt v0, v4, :cond_6

    .line 991
    :cond_5
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment$23;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$31(Lcom/vkontakte/android/fragments/PostViewFragment;)I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 992
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment$23;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$31(Lcom/vkontakte/android/fragments/PostViewFragment;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 985
    :cond_6
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    .line 986
    add-int/lit8 v3, v3, 0x1

    .line 984
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 995
    .end local v3    # "numVisible":I
    :cond_7
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 996
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment$23;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$29(Lcom/vkontakte/android/fragments/PostViewFragment;)I

    move-result v4

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment$23;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$31(Lcom/vkontakte/android/fragments/PostViewFragment;)I

    move-result v6

    if-ne v4, v6, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment$23;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$31(Lcom/vkontakte/android/fragments/PostViewFragment;)I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 997
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment$23;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$31(Lcom/vkontakte/android/fragments/PostViewFragment;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2
.end method

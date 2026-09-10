.class Lcom/vkontakte/android/SearchUsersView$5;
.super Ljava/lang/Object;
.source "SearchUsersView.java"

# interfaces
.implements Lcom/vkontakte/android/api/UsersSearch$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SearchUsersView;->doSearch(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SearchUsersView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SearchUsersView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SearchUsersView$5;->this$0:Lcom/vkontakte/android/SearchUsersView;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 198
    iget-object v0, p0, Lcom/vkontakte/android/SearchUsersView$5;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-virtual {v0}, Lcom/vkontakte/android/SearchUsersView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f090058

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 199
    iget-object v0, p0, Lcom/vkontakte/android/SearchUsersView$5;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-static {v0}, Lcom/vkontakte/android/SearchUsersView;->access$16(Lcom/vkontakte/android/SearchUsersView;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v0, p0, Lcom/vkontakte/android/SearchUsersView$5;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-static {v0}, Lcom/vkontakte/android/SearchUsersView;->access$17(Lcom/vkontakte/android/SearchUsersView;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/vkontakte/android/SearchUsersView$5;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-static {v0, v1}, Lcom/vkontakte/android/SearchUsersView;->access$18(Lcom/vkontakte/android/SearchUsersView;Z)V

    .line 201
    return-void

    .line 199
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public success([Lcom/vkontakte/android/UserProfile;I)V
    .locals 7
    .param p1, "_results"    # [Lcom/vkontakte/android/UserProfile;
    .param p2, "total"    # I

    .prologue
    const/4 v2, 0x1

    const/16 v6, 0x32

    const/4 v3, 0x0

    .line 165
    if-nez p2, :cond_0

    array-length v4, p1

    if-nez v4, :cond_0

    .line 166
    iget-object v4, p0, Lcom/vkontakte/android/SearchUsersView$5;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-static {v4}, Lcom/vkontakte/android/SearchUsersView;->access$8(Lcom/vkontakte/android/SearchUsersView;)Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x7f0900c0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 167
    iget-object v4, p0, Lcom/vkontakte/android/SearchUsersView$5;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-static {v4}, Lcom/vkontakte/android/SearchUsersView;->access$8(Lcom/vkontakte/android/SearchUsersView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    :cond_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 172
    .local v1, "results":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/UserProfile;>;"
    array-length v5, p1

    move v4, v3

    :goto_0
    if-lt v4, v5, :cond_3

    .line 174
    iget-object v4, p0, Lcom/vkontakte/android/SearchUsersView$5;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-static {v4}, Lcom/vkontakte/android/SearchUsersView;->access$9(Lcom/vkontakte/android/SearchUsersView;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 175
    iget-object v4, p0, Lcom/vkontakte/android/SearchUsersView$5;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-static {v4}, Lcom/vkontakte/android/SearchUsersView;->access$10(Lcom/vkontakte/android/SearchUsersView;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 182
    :goto_1
    iget-object v4, p0, Lcom/vkontakte/android/SearchUsersView$5;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-static {v4, v3}, Lcom/vkontakte/android/SearchUsersView;->access$11(Lcom/vkontakte/android/SearchUsersView;Z)V

    .line 183
    iget-object v4, p0, Lcom/vkontakte/android/SearchUsersView$5;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-static {v4}, Lcom/vkontakte/android/SearchUsersView;->access$12(Lcom/vkontakte/android/SearchUsersView;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 184
    iget-object v4, p0, Lcom/vkontakte/android/SearchUsersView$5;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-static {v4, v2}, Lcom/vkontakte/android/SearchUsersView;->access$11(Lcom/vkontakte/android/SearchUsersView;Z)V

    .line 185
    iget-object v4, p0, Lcom/vkontakte/android/SearchUsersView$5;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-static {v4, v3}, Lcom/vkontakte/android/SearchUsersView;->access$13(Lcom/vkontakte/android/SearchUsersView;Z)V

    .line 186
    iget-object v4, p0, Lcom/vkontakte/android/SearchUsersView$5;->this$0:Lcom/vkontakte/android/SearchUsersView;

    iget-object v5, p0, Lcom/vkontakte/android/SearchUsersView$5;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-static {v5}, Lcom/vkontakte/android/SearchUsersView;->access$14(Lcom/vkontakte/android/SearchUsersView;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkontakte/android/SearchUsersView;->access$5(Lcom/vkontakte/android/SearchUsersView;Ljava/lang/String;)V

    .line 188
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/SearchUsersView$5;->this$0:Lcom/vkontakte/android/SearchUsersView;

    iget-object v5, p0, Lcom/vkontakte/android/SearchUsersView$5;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-static {v5}, Lcom/vkontakte/android/SearchUsersView;->access$0(Lcom/vkontakte/android/SearchUsersView;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-le p2, v5, :cond_6

    :goto_2
    invoke-static {v4, v2}, Lcom/vkontakte/android/SearchUsersView;->access$15(Lcom/vkontakte/android/SearchUsersView;Z)V

    .line 189
    iget-object v2, p0, Lcom/vkontakte/android/SearchUsersView$5;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-static {v2}, Lcom/vkontakte/android/SearchUsersView;->access$16(Lcom/vkontakte/android/SearchUsersView;)Landroid/widget/FrameLayout;

    move-result-object v4

    iget-object v2, p0, Lcom/vkontakte/android/SearchUsersView$5;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-static {v2}, Lcom/vkontakte/android/SearchUsersView;->access$17(Lcom/vkontakte/android/SearchUsersView;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_3
    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 190
    iget-object v2, p0, Lcom/vkontakte/android/SearchUsersView$5;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-virtual {v2}, Lcom/vkontakte/android/SearchUsersView;->updateList()V

    .line 191
    iget-object v2, p0, Lcom/vkontakte/android/SearchUsersView$5;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-static {v2, v3}, Lcom/vkontakte/android/SearchUsersView;->access$18(Lcom/vkontakte/android/SearchUsersView;Z)V

    .line 192
    iget-object v2, p0, Lcom/vkontakte/android/SearchUsersView$5;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-static {v2}, Lcom/vkontakte/android/SearchUsersView;->access$4(Lcom/vkontakte/android/SearchUsersView;)I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/vkontakte/android/SearchUsersView$5;->this$0:Lcom/vkontakte/android/SearchUsersView;

    iget-object v3, p0, Lcom/vkontakte/android/SearchUsersView$5;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-static {v3}, Lcom/vkontakte/android/SearchUsersView;->access$19(Lcom/vkontakte/android/SearchUsersView;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    const/high16 v4, 0x42680000    # 58.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    div-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/vkontakte/android/SearchUsersView;->access$20(Lcom/vkontakte/android/SearchUsersView;I)V

    .line 193
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/SearchUsersView$5;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-static {v2}, Lcom/vkontakte/android/SearchUsersView;->access$2(Lcom/vkontakte/android/SearchUsersView;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/SearchUsersView$5;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-static {v3}, Lcom/vkontakte/android/SearchUsersView;->access$3(Lcom/vkontakte/android/SearchUsersView;)I

    move-result v3

    iget-object v4, p0, Lcom/vkontakte/android/SearchUsersView$5;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-static {v4}, Lcom/vkontakte/android/SearchUsersView;->access$4(Lcom/vkontakte/android/SearchUsersView;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/vkontakte/android/ui/ListImageLoader;->load(II)V

    .line 194
    return-void

    .line 172
    :cond_3
    aget-object v0, p1, v4

    .local v0, "p":Lcom/vkontakte/android/UserProfile;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 176
    .end local v0    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_4
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    if-le v4, v6, :cond_5

    .line 177
    iget-object v4, p0, Lcom/vkontakte/android/SearchUsersView$5;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-static {v4}, Lcom/vkontakte/android/SearchUsersView;->access$0(Lcom/vkontakte/android/SearchUsersView;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v1, v3, v6}, Ljava/util/Vector;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 178
    iget-object v4, p0, Lcom/vkontakte/android/SearchUsersView$5;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-static {v4}, Lcom/vkontakte/android/SearchUsersView;->access$10(Lcom/vkontakte/android/SearchUsersView;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-virtual {v1, v6, v5}, Ljava/util/Vector;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 180
    :cond_5
    iget-object v4, p0, Lcom/vkontakte/android/SearchUsersView$5;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-static {v4}, Lcom/vkontakte/android/SearchUsersView;->access$0(Lcom/vkontakte/android/SearchUsersView;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    :cond_6
    move v2, v3

    .line 188
    goto/16 :goto_2

    .line 189
    :cond_7
    const/16 v2, 0x8

    goto :goto_3
.end method

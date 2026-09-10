.class Lcom/vkontakte/android/fragments/BrowseUsersFragment$10;
.super Ljava/lang/Object;
.source "BrowseUsersFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/BrowseUsersFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$10;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "v":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v3, 0x7f08016d

    .line 392
    if-lez p3, :cond_1

    add-int/lit8 v0, p3, 0xd

    .line 393
    .local v0, "age":I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 394
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$10;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1700(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 408
    :cond_0
    :goto_1
    return-void

    .line 392
    .end local v0    # "age":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 395
    .restart local v0    # "age":I
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$10;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v1, v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1702(Lcom/vkontakte/android/fragments/BrowseUsersFragment;I)I

    .line 396
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$10;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1800(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$10;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1700(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$10;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1800(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)I

    move-result v1

    if-lez v1, :cond_3

    .line 397
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$10;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1600(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f08016e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$10;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1700(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)I

    move-result v2

    add-int/lit8 v2, v2, -0xd

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 406
    :cond_3
    :goto_2
    sget-boolean v1, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$10;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$500(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)V

    goto :goto_1

    .line 400
    :cond_4
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$10;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1800(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 401
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$10;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v1, v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1802(Lcom/vkontakte/android/fragments/BrowseUsersFragment;I)I

    .line 402
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$10;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1700(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$10;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1800(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)I

    move-result v2

    if-le v1, v2, :cond_3

    iget-object v1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$10;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1800(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)I

    move-result v1

    if-lez v1, :cond_3

    .line 403
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$10;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1600(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$10;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1800(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)I

    move-result v2

    add-int/lit8 v2, v2, -0xd

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 413
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

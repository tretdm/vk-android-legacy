.class Lcom/vkontakte/android/fragments/BrowseUsersFragment$8;
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
    .line 346
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$8;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "id"    # J
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
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v4, 0x7f080168

    const/4 v1, 0x0

    .line 349
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$8;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1400(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)I

    move-result v0

    int-to-long v2, v0

    cmp-long v0, v2, p4

    if-nez v0, :cond_0

    .line 355
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$8;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    long-to-int v2, p4

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1402(Lcom/vkontakte/android/fragments/BrowseUsersFragment;I)I

    .line 351
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$8;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1502(Lcom/vkontakte/android/fragments/BrowseUsersFragment;I)I

    .line 352
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$8;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1600(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0d00b9

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 353
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$8;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1600(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$8;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1400(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 354
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$8;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$500(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 353
    goto :goto_1
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
    .line 360
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

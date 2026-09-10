.class Lcom/vkontakte/android/fragments/DocumentsFragment$3;
.super Ljava/lang/Object;
.source "DocumentsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/DocumentsFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/DocumentsFragment;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$3;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x1

    .line 187
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$3;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$400(Lcom/vkontakte/android/fragments/DocumentsFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr p3, v1

    .line 188
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$3;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$100(Lcom/vkontakte/android/fragments/DocumentsFragment;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/Document;

    .line 189
    .local v0, "doc":Lcom/vkontakte/android/api/Document;
    new-instance v1, Lcom/vkontakte/android/VKAlertDialog$Builder;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$3;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/DocumentsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$3;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    const v5, 0x7f0d00b5

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/fragments/DocumentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$3;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    const v4, 0x7f0d009d

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/fragments/DocumentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    new-instance v3, Lcom/vkontakte/android/fragments/DocumentsFragment$3$1;

    invoke-direct {v3, p0, v0}, Lcom/vkontakte/android/fragments/DocumentsFragment$3$1;-><init>(Lcom/vkontakte/android/fragments/DocumentsFragment$3;Lcom/vkontakte/android/api/Document;)V

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 204
    return v6
.end method

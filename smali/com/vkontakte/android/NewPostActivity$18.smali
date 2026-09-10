.class Lcom/vkontakte/android/NewPostActivity$18;
.super Ljava/lang/Object;
.source "NewPostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewPostActivity;->showOptions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewPostActivity;

.field private final synthetic val$enabled:[Z

.field private final synthetic val$opts:[Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewPostActivity;[Z[Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity$18;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iput-object p2, p0, Lcom/vkontakte/android/NewPostActivity$18;->val$enabled:[Z

    iput-object p3, p0, Lcom/vkontakte/android/NewPostActivity$18;->val$opts:[Z

    .line 723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 726
    if-nez p2, :cond_0

    .line 727
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$18;->val$enabled:[Z

    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity$18;->val$enabled:[Z

    aput-boolean p3, v3, v4

    aput-boolean p3, v0, v1

    move-object v0, p1

    .line 728
    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 729
    if-nez p3, :cond_0

    .line 730
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$18;->val$opts:[Z

    aput-boolean v2, v0, v1

    move-object v0, p1

    .line 731
    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 732
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 733
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$18;->this$0:Lcom/vkontakte/android/NewPostActivity;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/vkontakte/android/NewPostActivity;->access$15(Lcom/vkontakte/android/NewPostActivity;Ljava/util/Calendar;)V

    .line 734
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$18;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewPostActivity;->access$16(Lcom/vkontakte/android/NewPostActivity;)V

    .line 737
    :cond_0
    if-ne p2, v4, :cond_3

    .line 738
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$18;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewPostActivity;->access$17(Lcom/vkontakte/android/NewPostActivity;)V

    .line 739
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$18;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewPostActivity;->access$18(Lcom/vkontakte/android/NewPostActivity;)Landroid/widget/ListView;

    move-result-object v3

    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$18;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewPostActivity;->access$19(Lcom/vkontakte/android/NewPostActivity;)Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, p2, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 740
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$18;->val$opts:[Z

    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity$18;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v3}, Lcom/vkontakte/android/NewPostActivity;->access$19(Lcom/vkontakte/android/NewPostActivity;)Ljava/util/Calendar;

    move-result-object v3

    if-eqz v3, :cond_2

    :goto_1
    aput-boolean v1, v0, p2

    .line 744
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 739
    goto :goto_0

    :cond_2
    move v1, v2

    .line 740
    goto :goto_1

    .line 743
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$18;->val$opts:[Z

    aput-boolean p3, v0, p2

    goto :goto_2
.end method

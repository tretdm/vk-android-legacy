.class Lcom/vkontakte/android/NewPostActivity$15;
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

.field private final synthetic val$acts:Ljava/util/ArrayList;

.field private final synthetic val$enabled:[Z

.field private final synthetic val$opts:[Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewPostActivity;Ljava/util/ArrayList;[Z[Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity$15;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iput-object p2, p0, Lcom/vkontakte/android/NewPostActivity$15;->val$acts:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/vkontakte/android/NewPostActivity$15;->val$enabled:[Z

    iput-object p4, p0, Lcom/vkontakte/android/NewPostActivity$15;->val$opts:[Z

    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 649
    const/4 v1, -0x1

    .line 650
    .local v1, "w":I
    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity$15;->val$acts:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 651
    .local v0, "s":Ljava/lang/String;
    const-string v2, "friendsonly"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 652
    const/4 v1, 0x0

    .line 653
    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity$15;->val$acts:Ljava/util/ArrayList;

    const-string v5, "twitter"

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 654
    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity$15;->val$enabled:[Z

    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity$15;->val$acts:Ljava/util/ArrayList;

    const-string v6, "twitter"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-eqz p3, :cond_4

    move v2, v3

    :goto_0
    aput-boolean v2, v5, v6

    .line 655
    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity$15;->val$opts:[Z

    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity$15;->val$acts:Ljava/util/ArrayList;

    const-string v6, "twitter"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-eqz p3, :cond_5

    move v2, v3

    :goto_1
    aput-boolean v2, v5, v6

    move-object v2, p1

    .line 656
    check-cast v2, Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v5

    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity$15;->val$acts:Ljava/util/ArrayList;

    const-string v6, "twitter"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-eqz p3, :cond_6

    move v2, v3

    :goto_2
    invoke-virtual {v5, v6, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 658
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity$15;->val$acts:Ljava/util/ArrayList;

    const-string v5, "fb"

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 659
    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity$15;->val$enabled:[Z

    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity$15;->val$acts:Ljava/util/ArrayList;

    const-string v6, "fb"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-eqz p3, :cond_7

    move v2, v3

    :goto_3
    aput-boolean v2, v5, v6

    .line 660
    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity$15;->val$opts:[Z

    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity$15;->val$acts:Ljava/util/ArrayList;

    const-string v6, "fb"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-eqz p3, :cond_8

    move v2, v3

    :goto_4
    aput-boolean v2, v5, v6

    move-object v2, p1

    .line 661
    check-cast v2, Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity$15;->val$acts:Ljava/util/ArrayList;

    const-string v6, "fb"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-eqz p3, :cond_9

    :goto_5
    invoke-virtual {v2, v5, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 663
    :cond_1
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 673
    :cond_2
    :goto_6
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 674
    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity$15;->val$opts:[Z

    aput-boolean p3, v2, v1

    .line 675
    :cond_3
    return-void

    .restart local p1    # "dialog":Landroid/content/DialogInterface;
    :cond_4
    move v2, v4

    .line 654
    goto :goto_0

    :cond_5
    move v2, v4

    .line 655
    goto :goto_1

    :cond_6
    move v2, v4

    .line 656
    goto :goto_2

    :cond_7
    move v2, v4

    .line 659
    goto :goto_3

    :cond_8
    move v2, v4

    .line 660
    goto :goto_4

    :cond_9
    move v3, v4

    .line 661
    goto :goto_5

    .line 664
    :cond_a
    const-string v2, "twitter"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 665
    const/4 v1, 0x1

    .line 666
    goto :goto_6

    :cond_b
    const-string v2, "fb"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 667
    const/4 v1, 0x2

    .line 668
    goto :goto_6

    :cond_c
    const-string v2, "timer"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 669
    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity$15;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v2}, Lcom/vkontakte/android/NewPostActivity;->access$17(Lcom/vkontakte/android/NewPostActivity;)V

    .line 670
    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity$15;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v2}, Lcom/vkontakte/android/NewPostActivity;->access$18(Lcom/vkontakte/android/NewPostActivity;)Landroid/widget/ListView;

    move-result-object v5

    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity$15;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v2}, Lcom/vkontakte/android/NewPostActivity;->access$19(Lcom/vkontakte/android/NewPostActivity;)Ljava/util/Calendar;

    move-result-object v2

    if-eqz v2, :cond_d

    move v2, v4

    :goto_7
    invoke-virtual {v5, p2, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 671
    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity$15;->val$opts:[Z

    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity$15;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v5}, Lcom/vkontakte/android/NewPostActivity;->access$19(Lcom/vkontakte/android/NewPostActivity;)Ljava/util/Calendar;

    move-result-object v5

    if-eqz v5, :cond_e

    :goto_8
    aput-boolean v4, v2, p2

    goto :goto_6

    :cond_d
    move v2, v3

    .line 670
    goto :goto_7

    :cond_e
    move v4, v3

    .line 671
    goto :goto_8
.end method

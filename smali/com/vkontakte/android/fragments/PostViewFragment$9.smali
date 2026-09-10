.class Lcom/vkontakte/android/fragments/PostViewFragment$9;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostViewFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PostViewFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$9;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/PostViewFragment$9;)Lcom/vkontakte/android/fragments/PostViewFragment;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$9;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    return-object v0
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
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
    .local p1, "aview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 540
    if-nez p3, :cond_0

    .line 541
    new-instance v2, Lcom/vkontakte/android/VKAlertDialog$Builder;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$9;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 542
    new-array v3, v0, [Ljava/lang/String;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment$9;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08010a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    new-instance v1, Lcom/vkontakte/android/fragments/PostViewFragment$9$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PostViewFragment$9$1;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment$9;)V

    invoke-virtual {v2, v3, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 550
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 553
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

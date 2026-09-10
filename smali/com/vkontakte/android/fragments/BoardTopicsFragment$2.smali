.class Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;
.super Ljava/lang/Object;
.source "BoardTopicsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/BoardTopicsFragment;->showCreateBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

.field private final synthetic val$edit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/BoardTopicsFragment;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->val$edit:Landroid/widget/EditText;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 216
    iget-object v2, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->access$5(Lcom/vkontakte/android/fragments/BoardTopicsFragment;Z)V

    .line 217
    iget-object v2, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 224
    :goto_0
    return-void

    .line 219
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 220
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "tid"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 221
    const-string v2, "gid"

    iget-object v3, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "gid"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 222
    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 223
    const-string v2, "BoardTopicViewFragment"

    iget-object v3, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto :goto_0
.end method

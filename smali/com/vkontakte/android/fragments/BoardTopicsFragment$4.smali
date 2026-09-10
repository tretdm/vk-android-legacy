.class Lcom/vkontakte/android/fragments/BoardTopicsFragment$4;
.super Ljava/lang/Object;
.source "BoardTopicsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$4;->val$edit:Landroid/widget/EditText;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 242
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 243
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$4;->val$edit:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 244
    return-void
.end method

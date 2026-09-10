.class Lcom/vkontakte/android/ProfileView$18;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ProfileView;->showStatusEditDlg(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ProfileView;

.field private final synthetic val$ed:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ProfileView;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ProfileView$18;->this$0:Lcom/vkontakte/android/ProfileView;

    iput-object p2, p0, Lcom/vkontakte/android/ProfileView$18;->val$ed:Landroid/widget/EditText;

    .line 1349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$18;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$18;->val$ed:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/ProfileView;->access$36(Lcom/vkontakte/android/ProfileView;Ljava/lang/String;)V

    .line 1353
    return-void
.end method

.class Lcom/vkontakte/android/RepostActivity$3;
.super Ljava/lang/Object;
.source "RepostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/RepostActivity;->repostWithComment(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/RepostActivity;

.field private final synthetic val$ed:Landroid/widget/EditText;

.field private final synthetic val$gid:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/RepostActivity;ILandroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/RepostActivity$3;->this$0:Lcom/vkontakte/android/RepostActivity;

    iput p2, p0, Lcom/vkontakte/android/RepostActivity$3;->val$gid:I

    iput-object p3, p0, Lcom/vkontakte/android/RepostActivity$3;->val$ed:Landroid/widget/EditText;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity$3;->this$0:Lcom/vkontakte/android/RepostActivity;

    iget v1, p0, Lcom/vkontakte/android/RepostActivity$3;->val$gid:I

    iget-object v2, p0, Lcom/vkontakte/android/RepostActivity$3;->val$ed:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/RepostActivity;->access$3(Lcom/vkontakte/android/RepostActivity;ILjava/lang/String;)V

    .line 133
    return-void
.end method

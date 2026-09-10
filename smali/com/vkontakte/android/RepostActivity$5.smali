.class Lcom/vkontakte/android/RepostActivity$5;
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

.field final synthetic val$ed:Landroid/widget/EditText;

.field final synthetic val$gid:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/RepostActivity;ILandroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/vkontakte/android/RepostActivity$5;->this$0:Lcom/vkontakte/android/RepostActivity;

    iput p2, p0, Lcom/vkontakte/android/RepostActivity$5;->val$gid:I

    iput-object p3, p0, Lcom/vkontakte/android/RepostActivity$5;->val$ed:Landroid/widget/EditText;

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
    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity$5;->this$0:Lcom/vkontakte/android/RepostActivity;

    iget v1, p0, Lcom/vkontakte/android/RepostActivity$5;->val$gid:I

    iget-object v2, p0, Lcom/vkontakte/android/RepostActivity$5;->val$ed:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/RepostActivity;->access$300(Lcom/vkontakte/android/RepostActivity;ILjava/lang/String;)V

    .line 133
    return-void
.end method

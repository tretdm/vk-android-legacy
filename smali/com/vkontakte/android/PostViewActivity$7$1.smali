.class Lcom/vkontakte/android/PostViewActivity$7$1;
.super Ljava/lang/Object;
.source "PostViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PostViewActivity$7;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/PostViewActivity$7;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PostViewActivity$7;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PostViewActivity$7$1;->this$1:Lcom/vkontakte/android/PostViewActivity$7;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 295
    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity$7$1;->this$1:Lcom/vkontakte/android/PostViewActivity$7;

    invoke-static {v1}, Lcom/vkontakte/android/PostViewActivity$7;->access$0(Lcom/vkontakte/android/PostViewActivity$7;)Lcom/vkontakte/android/PostViewActivity;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/PostViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 296
    .local v0, "clipboard":Landroid/text/ClipboardManager;
    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity$7$1;->this$1:Lcom/vkontakte/android/PostViewActivity$7;

    invoke-static {v1}, Lcom/vkontakte/android/PostViewActivity$7;->access$0(Lcom/vkontakte/android/PostViewActivity$7;)Lcom/vkontakte/android/PostViewActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/PostViewActivity;->access$5(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity$7$1;->this$1:Lcom/vkontakte/android/PostViewActivity$7;

    invoke-static {v1}, Lcom/vkontakte/android/PostViewActivity$7;->access$0(Lcom/vkontakte/android/PostViewActivity$7;)Lcom/vkontakte/android/PostViewActivity;

    move-result-object v1

    const v2, 0x7f090125

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 298
    return-void
.end method

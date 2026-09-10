.class Lcom/vkontakte/android/SendActivity$3;
.super Ljava/lang/Object;
.source "SendActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SendActivity;->showVideoDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SendActivity;

.field final synthetic val$descrEdit:Landroid/widget/EditText;

.field final synthetic val$titleEdit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SendActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/vkontakte/android/SendActivity$3;->this$0:Lcom/vkontakte/android/SendActivity;

    iput-object p2, p0, Lcom/vkontakte/android/SendActivity$3;->val$titleEdit:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/vkontakte/android/SendActivity$3;->val$descrEdit:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 185
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vkontakte/android/SendActivity$3;->this$0:Lcom/vkontakte/android/SendActivity;

    const-class v3, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    .local v0, "nIntent":Landroid/content/Intent;
    const-string v2, "file"

    iget-object v3, p0, Lcom/vkontakte/android/SendActivity$3;->this$0:Lcom/vkontakte/android/SendActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 188
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "name"

    iget-object v3, p0, Lcom/vkontakte/android/SendActivity$3;->val$titleEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v2, "description"

    iget-object v3, p0, Lcom/vkontakte/android/SendActivity$3;->val$descrEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v2, "req_params"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 191
    const-string v2, "type"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    iget-object v2, p0, Lcom/vkontakte/android/SendActivity$3;->this$0:Lcom/vkontakte/android/SendActivity;

    invoke-virtual {v2, v0}, Lcom/vkontakte/android/SendActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 193
    iget-object v2, p0, Lcom/vkontakte/android/SendActivity$3;->this$0:Lcom/vkontakte/android/SendActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/SendActivity;->finish()V

    .line 194
    return-void
.end method

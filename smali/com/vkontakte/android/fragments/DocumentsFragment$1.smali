.class Lcom/vkontakte/android/fragments/DocumentsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "DocumentsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/DocumentsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/DocumentsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    .line 79
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 82
    const-string v4, "com.vkontakte.android.UPLOAD_DONE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    const-string v4, "attachment"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Attachment;

    .line 84
    .local v2, "na":Lcom/vkontakte/android/Attachment;
    instance-of v4, v2, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v4, :cond_0

    move-object v0, v2

    .line 85
    check-cast v0, Lcom/vkontakte/android/DocumentAttachment;

    .line 86
    .local v0, "att":Lcom/vkontakte/android/DocumentAttachment;
    iget v4, v0, Lcom/vkontakte/android/DocumentAttachment;->oid:I

    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$0(Lcom/vkontakte/android/fragments/DocumentsFragment;)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 87
    new-instance v1, Lcom/vkontakte/android/api/Document;

    invoke-direct {v1}, Lcom/vkontakte/android/api/Document;-><init>()V

    .line 88
    .local v1, "doc":Lcom/vkontakte/android/api/Document;
    iget v4, v0, Lcom/vkontakte/android/DocumentAttachment;->did:I

    iput v4, v1, Lcom/vkontakte/android/api/Document;->did:I

    .line 90
    iget v4, v0, Lcom/vkontakte/android/DocumentAttachment;->oid:I

    iput v4, v1, Lcom/vkontakte/android/api/Document;->oid:I

    .line 91
    iget v4, v0, Lcom/vkontakte/android/DocumentAttachment;->size:I

    iput v4, v1, Lcom/vkontakte/android/api/Document;->size:I

    .line 92
    iget-object v4, v0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    iput-object v4, v1, Lcom/vkontakte/android/api/Document;->thumb:Ljava/lang/String;

    .line 93
    iget-object v4, v0, Lcom/vkontakte/android/DocumentAttachment;->title:Ljava/lang/String;

    iput-object v4, v1, Lcom/vkontakte/android/api/Document;->title:Ljava/lang/String;

    .line 94
    iget-object v4, v0, Lcom/vkontakte/android/DocumentAttachment;->url:Ljava/lang/String;

    iput-object v4, v1, Lcom/vkontakte/android/api/Document;->url:Ljava/lang/String;

    .line 95
    iget-object v4, v0, Lcom/vkontakte/android/DocumentAttachment;->title:Ljava/lang/String;

    const-string v5, "\\."

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "sp":[Ljava/lang/String;
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v3, v4

    iput-object v4, v1, Lcom/vkontakte/android/api/Document;->ext:Ljava/lang/String;

    .line 97
    iget-object v4, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$1(Lcom/vkontakte/android/fragments/DocumentsFragment;)Ljava/util/Vector;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 98
    iget-object v4, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/DocumentsFragment;->updateList()V

    .line 102
    .end local v0    # "att":Lcom/vkontakte/android/DocumentAttachment;
    .end local v1    # "doc":Lcom/vkontakte/android/api/Document;
    .end local v2    # "na":Lcom/vkontakte/android/Attachment;
    .end local v3    # "sp":[Ljava/lang/String;
    :cond_0
    return-void
.end method

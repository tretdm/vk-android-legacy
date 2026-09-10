.class Lcom/vkontakte/android/fragments/DocumentsFragment$2;
.super Ljava/lang/Object;
.source "DocumentsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/DocumentsFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/DocumentsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$2;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 14
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$2;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$3(Lcom/vkontakte/android/fragments/DocumentsFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int p3, p3, v1

    .line 151
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$2;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$5(Lcom/vkontakte/android/fragments/DocumentsFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 153
    .local v8, "intent":Landroid/content/Intent;
    const-string v3, "document"

    iget-object v1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$2;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$1(Lcom/vkontakte/android/fragments/DocumentsFragment;)Ljava/util/Vector;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v8, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 154
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$2;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/DocumentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1, v3, v8}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 155
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$2;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/DocumentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 183
    .end local v8    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$2;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$1(Lcom/vkontakte/android/fragments/DocumentsFragment;)Ljava/util/Vector;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/Document;

    iget-object v11, v1, Lcom/vkontakte/android/api/Document;->thumb:Ljava/lang/String;

    .line 158
    .local v11, "thumb":Ljava/lang/String;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$2;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$1(Lcom/vkontakte/android/fragments/DocumentsFragment;)Ljava/util/Vector;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/Document;

    iget-object v13, v1, Lcom/vkontakte/android/api/Document;->url:Ljava/lang/String;

    .line 159
    .local v13, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$2;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$1(Lcom/vkontakte/android/fragments/DocumentsFragment;)Ljava/util/Vector;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/Document;

    iget-object v7, v1, Lcom/vkontakte/android/api/Document;->title:Ljava/lang/String;

    .line 160
    .local v7, "fileName":Ljava/lang/String;
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 161
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 162
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "doc_url"

    invoke-virtual {v2, v1, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v1, "doc_title"

    invoke-virtual {v2, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v1, "PhotoViewerFragment"

    iget-object v3, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$2;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/DocumentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static/range {v1 .. v6}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;ZII)V

    goto :goto_0

    .line 166
    .end local v2    # "args":Landroid/os/Bundle;
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v1, v3, :cond_3

    .line 167
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 168
    .local v12, "uri":Landroid/net/Uri;
    new-instance v10, Landroid/app/DownloadManager$Request;

    invoke-direct {v10, v12}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 169
    .local v10, "req":Landroid/app/DownloadManager$Request;
    new-instance v1, Ljava/io/File;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v12}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    .line 171
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v1, v3, :cond_2

    .line 172
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 173
    invoke-virtual {v10}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 175
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$2;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/DocumentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v3, "download"

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/DownloadManager;

    .line 176
    .local v9, "mgr":Landroid/app/DownloadManager;
    invoke-virtual {v9, v10}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    goto/16 :goto_0

    .line 178
    .end local v9    # "mgr":Landroid/app/DownloadManager;
    .end local v10    # "req":Landroid/app/DownloadManager$Request;
    .end local v12    # "uri":Landroid/net/Uri;
    :cond_3
    new-instance v8, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v8, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 179
    .restart local v8    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$2;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/DocumentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

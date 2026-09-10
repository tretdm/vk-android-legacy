.class Lcom/vkontakte/android/FilePickerActivity$2;
.super Ljava/lang/Object;
.source "FilePickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/FilePickerActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/vkontakte/android/FilePickerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/FilePickerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/FilePickerActivity$2;->this$0:Lcom/vkontakte/android/FilePickerActivity;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 16
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "arg3"    # J
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
    .line 92
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/FilePickerActivity$2;->this$0:Lcom/vkontakte/android/FilePickerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/FilePickerActivity;->access$4(Lcom/vkontakte/android/FilePickerActivity;)Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vkontakte/android/FilePickerActivity$ListItem;

    .line 93
    .local v11, "item":Lcom/vkontakte/android/FilePickerActivity$ListItem;
    iget-object v9, v11, Lcom/vkontakte/android/FilePickerActivity$ListItem;->file:Ljava/io/File;

    .line 94
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    new-instance v10, Lcom/vkontakte/android/FilePickerActivity$HistoryEntry;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/FilePickerActivity$2;->this$0:Lcom/vkontakte/android/FilePickerActivity;

    const/4 v3, 0x0

    invoke-direct {v10, v2, v3}, Lcom/vkontakte/android/FilePickerActivity$HistoryEntry;-><init>(Lcom/vkontakte/android/FilePickerActivity;Lcom/vkontakte/android/FilePickerActivity$HistoryEntry;)V

    .line 96
    .local v10, "he":Lcom/vkontakte/android/FilePickerActivity$HistoryEntry;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/FilePickerActivity$2;->this$0:Lcom/vkontakte/android/FilePickerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/FilePickerActivity;->access$3(Lcom/vkontakte/android/FilePickerActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    iput v2, v10, Lcom/vkontakte/android/FilePickerActivity$HistoryEntry;->scrollItem:I

    .line 97
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/FilePickerActivity$2;->this$0:Lcom/vkontakte/android/FilePickerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/FilePickerActivity;->access$3(Lcom/vkontakte/android/FilePickerActivity;)Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, v10, Lcom/vkontakte/android/FilePickerActivity$HistoryEntry;->scrollOffset:I

    .line 98
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/FilePickerActivity$2;->this$0:Lcom/vkontakte/android/FilePickerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/FilePickerActivity;->access$0(Lcom/vkontakte/android/FilePickerActivity;)Ljava/io/File;

    move-result-object v2

    iput-object v2, v10, Lcom/vkontakte/android/FilePickerActivity$HistoryEntry;->dir:Ljava/io/File;

    .line 99
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/FilePickerActivity$2;->this$0:Lcom/vkontakte/android/FilePickerActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/FilePickerActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/vkontakte/android/FilePickerActivity$HistoryEntry;->title:Ljava/lang/String;

    .line 100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/FilePickerActivity$2;->this$0:Lcom/vkontakte/android/FilePickerActivity;

    invoke-static {v2, v9}, Lcom/vkontakte/android/FilePickerActivity;->access$2(Lcom/vkontakte/android/FilePickerActivity;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 127
    .end local v10    # "he":Lcom/vkontakte/android/FilePickerActivity$HistoryEntry;
    :goto_0
    return-void

    .line 103
    .restart local v10    # "he":Lcom/vkontakte/android/FilePickerActivity$HistoryEntry;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/FilePickerActivity$2;->this$0:Lcom/vkontakte/android/FilePickerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/FilePickerActivity;->access$7(Lcom/vkontakte/android/FilePickerActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/FilePickerActivity$2;->this$0:Lcom/vkontakte/android/FilePickerActivity;

    iget-object v3, v11, Lcom/vkontakte/android/FilePickerActivity$ListItem;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/FilePickerActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/FilePickerActivity$2;->this$0:Lcom/vkontakte/android/FilePickerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/FilePickerActivity;->access$3(Lcom/vkontakte/android/FilePickerActivity;)Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 107
    .end local v10    # "he":Lcom/vkontakte/android/FilePickerActivity$HistoryEntry;
    :cond_1
    invoke-virtual {v9}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_2

    .line 108
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/FilePickerActivity$2;->this$0:Lcom/vkontakte/android/FilePickerActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/FilePickerActivity$2;->this$0:Lcom/vkontakte/android/FilePickerActivity;

    const v4, 0x7f0802d8

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/FilePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/FilePickerActivity;->access$8(Lcom/vkontakte/android/FilePickerActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/FilePickerActivity$2;->this$0:Lcom/vkontakte/android/FilePickerActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/FilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "size_limit"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/FilePickerActivity$2;->this$0:Lcom/vkontakte/android/FilePickerActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/FilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "size_limit"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 113
    .local v12, "lim":J
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v2, v2, v12

    if-lez v2, :cond_3

    .line 114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/FilePickerActivity$2;->this$0:Lcom/vkontakte/android/FilePickerActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/FilePickerActivity$2;->this$0:Lcom/vkontakte/android/FilePickerActivity;

    const v4, 0x7f0802e9

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkontakte/android/FilePickerActivity$2;->this$0:Lcom/vkontakte/android/FilePickerActivity;

    invoke-virtual {v7}, Lcom/vkontakte/android/FilePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v12, v13, v7}, Lcom/vkontakte/android/Global;->langFileSize(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/vkontakte/android/FilePickerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/FilePickerActivity;->access$8(Lcom/vkontakte/android/FilePickerActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 118
    .end local v12    # "lim":J
    :cond_3
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "file"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    .line 119
    .local v14, "path":Ljava/lang/String;
    new-instance v1, Lcom/vkontakte/android/PendingDocumentAttachment;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    iget-object v5, v11, Lcom/vkontakte/android/FilePickerActivity$ListItem;->thumb:Ljava/lang/String;

    if-eqz v5, :cond_4

    move-object v5, v14

    :goto_1
    const/4 v6, 0x0

    invoke-static {}, Lcom/vkontakte/android/UploaderService;->getNewID()I

    move-result v7

    invoke-direct/range {v1 .. v7}, Lcom/vkontakte/android/PendingDocumentAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    .line 120
    .local v1, "att":Lcom/vkontakte/android/PendingDocumentAttachment;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v8, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 123
    .local v15, "result":Landroid/content/Intent;
    const-string v2, "files"

    invoke-virtual {v15, v2, v8}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/FilePickerActivity$2;->this$0:Lcom/vkontakte/android/FilePickerActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v15}, Lcom/vkontakte/android/FilePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/FilePickerActivity$2;->this$0:Lcom/vkontakte/android/FilePickerActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/FilePickerActivity;->finish()V

    goto/16 :goto_0

    .line 119
    .end local v1    # "att":Lcom/vkontakte/android/PendingDocumentAttachment;
    .end local v8    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .end local v15    # "result":Landroid/content/Intent;
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

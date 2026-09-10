.class Lcom/vkontakte/android/NewPostActivity$23;
.super Ljava/lang/Object;
.source "NewPostActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewPostActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewPostActivity;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewPostActivity;ILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 829
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iput p2, p0, Lcom/vkontakte/android/NewPostActivity$23;->val$requestCode:I

    iput-object p3, p0, Lcom/vkontakte/android/NewPostActivity$23;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 831
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/NewPostActivity$23;->val$requestCode:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    .line 832
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/NewPostActivity$23;->val$intent:Landroid/content/Intent;

    const-string v14, "attachment"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 833
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/NewPostActivity$23;->val$intent:Landroid/content/Intent;

    const-string v14, "attachment"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/PhotoAttachment;

    .line 834
    .local v2, "att":Lcom/vkontakte/android/PhotoAttachment;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v13}, Lcom/vkontakte/android/NewPostActivity;->access$300(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-result-object v13

    invoke-virtual {v13, v2}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    .line 843
    .end local v2    # "att":Lcom/vkontakte/android/PhotoAttachment;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/vkontakte/android/NewPostActivity;->access$800(Lcom/vkontakte/android/NewPostActivity;Z)V

    .line 845
    :cond_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/NewPostActivity$23;->val$requestCode:I

    const/4 v14, 0x4

    if-ne v13, v14, :cond_2

    .line 846
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/NewPostActivity$23;->val$intent:Landroid/content/Intent;

    const-string v14, "audio"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/AudioFile;

    .line 847
    .local v1, "af":Lcom/vkontakte/android/AudioFile;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v13}, Lcom/vkontakte/android/NewPostActivity;->access$300(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-result-object v13

    new-instance v14, Lcom/vkontakte/android/AudioAttachment;

    invoke-direct {v14, v1}, Lcom/vkontakte/android/AudioAttachment;-><init>(Lcom/vkontakte/android/AudioFile;)V

    invoke-virtual {v13, v14}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    .line 848
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/vkontakte/android/NewPostActivity;->access$800(Lcom/vkontakte/android/NewPostActivity;Z)V

    .line 850
    .end local v1    # "af":Lcom/vkontakte/android/AudioFile;
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/NewPostActivity$23;->val$requestCode:I

    const/4 v14, 0x5

    if-ne v13, v14, :cond_3

    .line 851
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/NewPostActivity$23;->val$intent:Landroid/content/Intent;

    const-string v14, "video"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Lcom/vkontakte/android/api/VideoFile;

    .line 852
    .local v12, "vf":Lcom/vkontakte/android/api/VideoFile;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v13}, Lcom/vkontakte/android/NewPostActivity;->access$300(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-result-object v13

    new-instance v14, Lcom/vkontakte/android/VideoAttachment;

    invoke-direct {v14, v12}, Lcom/vkontakte/android/VideoAttachment;-><init>(Lcom/vkontakte/android/api/VideoFile;)V

    invoke-virtual {v13, v14}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    .line 853
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/vkontakte/android/NewPostActivity;->access$800(Lcom/vkontakte/android/NewPostActivity;Z)V

    .line 855
    .end local v12    # "vf":Lcom/vkontakte/android/api/VideoFile;
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/NewPostActivity$23;->val$requestCode:I

    const/4 v14, 0x6

    if-ne v13, v14, :cond_7

    .line 856
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/NewPostActivity$23;->val$intent:Landroid/content/Intent;

    const-string v14, "documents"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 857
    .local v4, "docs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Parcelable;

    .line 858
    .local v8, "p":Landroid/os/Parcelable;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v13}, Lcom/vkontakte/android/NewPostActivity;->access$300(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-result-object v13

    check-cast v8, Lcom/vkontakte/android/Attachment;

    .end local v8    # "p":Landroid/os/Parcelable;
    invoke-virtual {v13, v8}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    goto :goto_1

    .line 835
    .end local v4    # "docs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/NewPostActivity$23;->val$intent:Landroid/content/Intent;

    const-string v14, "files"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 836
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/NewPostActivity$23;->val$intent:Landroid/content/Intent;

    const-string v14, "files"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 837
    .local v6, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 838
    .local v5, "file":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v13}, Lcom/vkontakte/android/NewPostActivity;->access$300(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-result-object v13

    new-instance v14, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    invoke-direct {v14, v5}, Lcom/vkontakte/android/ui/PendingPhotoAttachment;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    goto :goto_2

    .line 841
    .end local v5    # "file":Ljava/lang/String;
    .end local v6    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v13}, Lcom/vkontakte/android/NewPostActivity;->access$300(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-result-object v13

    new-instance v14, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/NewPostActivity$23;->val$intent:Landroid/content/Intent;

    const-string v16, "file"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/vkontakte/android/ui/PendingPhotoAttachment;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    goto/16 :goto_0

    .line 860
    .restart local v4    # "docs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/vkontakte/android/NewPostActivity;->access$800(Lcom/vkontakte/android/NewPostActivity;Z)V

    .line 862
    .end local v4    # "docs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/NewPostActivity$23;->val$requestCode:I

    const/4 v14, 0x7

    if-ne v13, v14, :cond_8

    .line 863
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/NewPostActivity$23;->val$intent:Landroid/content/Intent;

    const-string v14, "user"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/UserProfile;

    .line 864
    .local v8, "p":Lcom/vkontakte/android/UserProfile;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    const v14, 0x7f0801a4

    invoke-virtual {v13, v14}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    .line 865
    .local v11, "txt":Landroid/widget/EditText;
    invoke-virtual {v11}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v13

    invoke-virtual {v11}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v14

    if-eq v13, v14, :cond_c

    .line 866
    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v11}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v14

    invoke-virtual {v11}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v15

    invoke-interface {v13, v14, v15}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 867
    .local v10, "s":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v11}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v14

    invoke-virtual {v11}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "*id"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v8, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v13 .. v16}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 872
    .end local v8    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v10    # "s":Ljava/lang/String;
    .end local v11    # "txt":Landroid/widget/EditText;
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/NewPostActivity$23;->val$requestCode:I

    const/16 v14, 0x8

    if-ne v13, v14, :cond_9

    .line 873
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/NewPostActivity$23;->val$intent:Landroid/content/Intent;

    const-string v14, "poll"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/PollAttachment;

    .line 874
    .local v9, "poll":Lcom/vkontakte/android/PollAttachment;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v13}, Lcom/vkontakte/android/NewPostActivity;->access$300(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-result-object v13

    invoke-virtual {v13, v9}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    .line 875
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/vkontakte/android/NewPostActivity;->access$800(Lcom/vkontakte/android/NewPostActivity;Z)V

    .line 877
    .end local v9    # "poll":Lcom/vkontakte/android/PollAttachment;
    :cond_9
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/NewPostActivity$23;->val$requestCode:I

    const/16 v14, 0x9

    if-ne v13, v14, :cond_b

    .line 878
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/NewPostActivity$23;->val$intent:Landroid/content/Intent;

    const-string v14, "poll"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/PollAttachment;

    .line 879
    .restart local v9    # "poll":Lcom/vkontakte/android/PollAttachment;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v13}, Lcom/vkontakte/android/NewPostActivity;->access$300(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-result-object v13

    invoke-virtual {v13, v9}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    .line 880
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v13}, Lcom/vkontakte/android/NewPostActivity;->access$300(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getAll()Ljava/util/ArrayList;

    move-result-object v3

    .line 881
    .local v3, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Attachment;

    .line 882
    .local v2, "att":Lcom/vkontakte/android/Attachment;
    instance-of v13, v2, Lcom/vkontakte/android/PollAttachment;

    if-eqz v13, :cond_a

    if-eq v2, v9, :cond_a

    .line 883
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v13}, Lcom/vkontakte/android/NewPostActivity;->access$300(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-result-object v13

    invoke-virtual {v13, v2}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->remove(Lcom/vkontakte/android/Attachment;)V

    .line 888
    .end local v2    # "att":Lcom/vkontakte/android/Attachment;
    .end local v3    # "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "poll":Lcom/vkontakte/android/PollAttachment;
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v13}, Lcom/vkontakte/android/NewPostActivity;->access$700(Lcom/vkontakte/android/NewPostActivity;)V

    .line 889
    return-void

    .line 869
    .restart local v8    # "p":Lcom/vkontakte/android/UserProfile;
    .restart local v11    # "txt":Landroid/widget/EditText;
    :cond_c
    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v11}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v13

    if-nez v13, :cond_d

    const-string v13, ""

    :goto_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, "*id"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v0, v8, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, " ("

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v0, v8, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, ") "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v14, v15, v13}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_3

    :cond_d
    const-string v13, " "

    goto :goto_4
.end method

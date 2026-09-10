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

.field private final synthetic val$intent:Landroid/content/Intent;

.field private final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewPostActivity;ILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iput p2, p0, Lcom/vkontakte/android/NewPostActivity$23;->val$requestCode:I

    iput-object p3, p0, Lcom/vkontakte/android/NewPostActivity$23;->val$intent:Landroid/content/Intent;

    .line 830
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 832
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vkontakte/android/NewPostActivity$23;->val$requestCode:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    .line 833
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/NewPostActivity$23;->val$intent:Landroid/content/Intent;

    const-string v13, "attachment"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 834
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/NewPostActivity$23;->val$intent:Landroid/content/Intent;

    const-string v13, "attachment"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/PhotoAttachment;

    .line 835
    .local v2, "att":Lcom/vkontakte/android/PhotoAttachment;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v12}, Lcom/vkontakte/android/NewPostActivity;->access$3(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    .line 844
    .end local v2    # "att":Lcom/vkontakte/android/PhotoAttachment;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/vkontakte/android/NewPostActivity;->access$8(Lcom/vkontakte/android/NewPostActivity;Z)V

    .line 846
    :cond_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vkontakte/android/NewPostActivity$23;->val$requestCode:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_2

    .line 847
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/NewPostActivity$23;->val$intent:Landroid/content/Intent;

    const-string v13, "audio"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/AudioFile;

    .line 848
    .local v1, "af":Lcom/vkontakte/android/AudioFile;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v12}, Lcom/vkontakte/android/NewPostActivity;->access$3(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-result-object v12

    new-instance v13, Lcom/vkontakte/android/AudioAttachment;

    invoke-direct {v13, v1}, Lcom/vkontakte/android/AudioAttachment;-><init>(Lcom/vkontakte/android/AudioFile;)V

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    .line 849
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/vkontakte/android/NewPostActivity;->access$8(Lcom/vkontakte/android/NewPostActivity;Z)V

    .line 851
    .end local v1    # "af":Lcom/vkontakte/android/AudioFile;
    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vkontakte/android/NewPostActivity$23;->val$requestCode:I

    const/4 v13, 0x5

    if-ne v12, v13, :cond_3

    .line 852
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/NewPostActivity$23;->val$intent:Landroid/content/Intent;

    const-string v13, "video"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Lcom/vkontakte/android/api/VideoFile;

    .line 853
    .local v11, "vf":Lcom/vkontakte/android/api/VideoFile;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v12}, Lcom/vkontakte/android/NewPostActivity;->access$3(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-result-object v12

    new-instance v13, Lcom/vkontakte/android/VideoAttachment;

    invoke-direct {v13, v11}, Lcom/vkontakte/android/VideoAttachment;-><init>(Lcom/vkontakte/android/api/VideoFile;)V

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    .line 854
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/vkontakte/android/NewPostActivity;->access$8(Lcom/vkontakte/android/NewPostActivity;Z)V

    .line 856
    .end local v11    # "vf":Lcom/vkontakte/android/api/VideoFile;
    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vkontakte/android/NewPostActivity$23;->val$requestCode:I

    const/4 v13, 0x6

    if-ne v12, v13, :cond_4

    .line 857
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/NewPostActivity$23;->val$intent:Landroid/content/Intent;

    const-string v13, "documents"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 858
    .local v4, "docs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_b

    .line 861
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/vkontakte/android/NewPostActivity;->access$8(Lcom/vkontakte/android/NewPostActivity;Z)V

    .line 863
    .end local v4    # "docs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vkontakte/android/NewPostActivity$23;->val$requestCode:I

    const/4 v13, 0x7

    if-ne v12, v13, :cond_5

    .line 864
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/NewPostActivity$23;->val$intent:Landroid/content/Intent;

    const-string v13, "user"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/UserProfile;

    .line 865
    .local v7, "p":Lcom/vkontakte/android/UserProfile;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    const v13, 0x7f0901c4

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    .line 866
    .local v10, "txt":Landroid/widget/EditText;
    invoke-virtual {v10}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v12

    invoke-virtual {v10}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v13

    if-eq v12, v13, :cond_c

    .line 867
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v10}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v13

    invoke-virtual {v10}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v14

    invoke-interface {v12, v13, v14}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 868
    .local v9, "s":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v10}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v13

    invoke-virtual {v10}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v14

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "*id"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v7, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v13, v14, v15}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 873
    .end local v7    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v9    # "s":Ljava/lang/String;
    .end local v10    # "txt":Landroid/widget/EditText;
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vkontakte/android/NewPostActivity$23;->val$requestCode:I

    const/16 v13, 0x8

    if-ne v12, v13, :cond_6

    .line 874
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/NewPostActivity$23;->val$intent:Landroid/content/Intent;

    const-string v13, "poll"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/PollAttachment;

    .line 875
    .local v8, "poll":Lcom/vkontakte/android/PollAttachment;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v12}, Lcom/vkontakte/android/NewPostActivity;->access$3(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-result-object v12

    invoke-virtual {v12, v8}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    .line 876
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/vkontakte/android/NewPostActivity;->access$8(Lcom/vkontakte/android/NewPostActivity;Z)V

    .line 878
    .end local v8    # "poll":Lcom/vkontakte/android/PollAttachment;
    :cond_6
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vkontakte/android/NewPostActivity$23;->val$requestCode:I

    const/16 v13, 0x9

    if-ne v12, v13, :cond_8

    .line 879
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/NewPostActivity$23;->val$intent:Landroid/content/Intent;

    const-string v13, "poll"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/PollAttachment;

    .line 880
    .restart local v8    # "poll":Lcom/vkontakte/android/PollAttachment;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v12}, Lcom/vkontakte/android/NewPostActivity;->access$3(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-result-object v12

    invoke-virtual {v12, v8}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    .line 881
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v12}, Lcom/vkontakte/android/NewPostActivity;->access$3(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getAll()Ljava/util/ArrayList;

    move-result-object v3

    .line 882
    .local v3, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_e

    .line 889
    .end local v3    # "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    .end local v8    # "poll":Lcom/vkontakte/android/PollAttachment;
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v12}, Lcom/vkontakte/android/NewPostActivity;->access$7(Lcom/vkontakte/android/NewPostActivity;)V

    .line 890
    return-void

    .line 836
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/NewPostActivity$23;->val$intent:Landroid/content/Intent;

    const-string v13, "files"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 837
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/NewPostActivity$23;->val$intent:Landroid/content/Intent;

    const-string v13, "files"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 838
    .local v6, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 839
    .local v5, "file":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v13}, Lcom/vkontakte/android/NewPostActivity;->access$3(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-result-object v13

    new-instance v14, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    invoke-direct {v14, v5}, Lcom/vkontakte/android/ui/PendingPhotoAttachment;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    goto :goto_4

    .line 842
    .end local v5    # "file":Ljava/lang/String;
    .end local v6    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v12}, Lcom/vkontakte/android/NewPostActivity;->access$3(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-result-object v12

    new-instance v13, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/NewPostActivity$23;->val$intent:Landroid/content/Intent;

    const-string v15, "file"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/vkontakte/android/ui/PendingPhotoAttachment;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    goto/16 :goto_0

    .line 858
    .restart local v4    # "docs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_b
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Parcelable;

    .line 859
    .local v7, "p":Landroid/os/Parcelable;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v13}, Lcom/vkontakte/android/NewPostActivity;->access$3(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-result-object v13

    check-cast v7, Lcom/vkontakte/android/Attachment;

    .end local v7    # "p":Landroid/os/Parcelable;
    invoke-virtual {v13, v7}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    goto/16 :goto_1

    .line 870
    .end local v4    # "docs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .local v7, "p":Lcom/vkontakte/android/UserProfile;
    .restart local v10    # "txt":Landroid/widget/EditText;
    :cond_c
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v10}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v12

    if-nez v12, :cond_d

    const-string v12, ""

    :goto_5
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "*id"

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v15, v7, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, " ("

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v15, v7, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, ") "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v13, v14, v12}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_2

    :cond_d
    const-string v12, " "

    goto :goto_5

    .line 882
    .end local v7    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v10    # "txt":Landroid/widget/EditText;
    .restart local v3    # "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    .restart local v8    # "poll":Lcom/vkontakte/android/PollAttachment;
    :cond_e
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Attachment;

    .line 883
    .local v2, "att":Lcom/vkontakte/android/Attachment;
    instance-of v13, v2, Lcom/vkontakte/android/PollAttachment;

    if-eqz v13, :cond_7

    if-eq v2, v8, :cond_7

    .line 884
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v12}, Lcom/vkontakte/android/NewPostActivity;->access$3(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->remove(Lcom/vkontakte/android/Attachment;)V

    goto/16 :goto_3
.end method

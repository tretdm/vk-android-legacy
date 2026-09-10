.class Lcom/vkontakte/android/PhotoViewerFragment$22;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "PhotoViewerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerFragment;->loadPhotoInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoViewerFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerFragment$22;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    .line 747
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 844
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment$22;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/PhotoViewerFragment;->access$20(Lcom/vkontakte/android/PhotoViewerFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 845
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 28
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerFragment$22;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/vkontakte/android/PhotoViewerFragment;->access$20(Lcom/vkontakte/android/PhotoViewerFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 751
    :try_start_0
    const-string v21, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 752
    .local v15, "resp":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerFragment$22;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/PhotoViewerFragment;->access$12(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v21

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/vkontakte/android/Photo;->nTags:I

    .line 753
    const-string v21, "t"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 754
    .local v2, "a":Lorg/json/JSONArray;
    if-eqz v2, :cond_0

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerFragment$22;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/PhotoViewerFragment;->access$12(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v21

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/vkontakte/android/Photo;->nTags:I

    .line 756
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Lcom/vkontakte/android/PhotoTag;

    move-object/from16 v18, v0

    .line 757
    .local v18, "tags":[Lcom/vkontakte/android/PhotoTag;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v21

    move/from16 v0, v21

    if-lt v5, v0, :cond_7

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerFragment$22;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/PhotoViewerFragment;->access$6(Lcom/vkontakte/android/PhotoViewerFragment;)Landroid/view/View;

    move-result-object v21

    const v22, 0x7f0600da

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/vkontakte/android/ZoomableImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerFragment$22;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/vkontakte/android/PhotoViewerFragment;->access$12(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerFragment$22;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/vkontakte/android/PhotoViewerFragment;->access$21(Lcom/vkontakte/android/PhotoViewerFragment;[Lcom/vkontakte/android/PhotoTag;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/vkontakte/android/Photo;->tags:[Lcom/vkontakte/android/PhotoTag;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ZoomableImageView;->setTags([Lcom/vkontakte/android/PhotoTag;)V

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerFragment$22;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    check-cast v21, Lcom/vkontakte/android/PhotoViewerActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerFragment$22;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/vkontakte/android/PhotoViewerFragment;->access$12(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/vkontakte/android/Photo;->tags:[Lcom/vkontakte/android/PhotoTag;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/vkontakte/android/PhotoViewerActivity;->currentPhotoTags:[Lcom/vkontakte/android/PhotoTag;

    .line 772
    .end local v5    # "i":I
    .end local v18    # "tags":[Lcom/vkontakte/android/PhotoTag;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerFragment$22;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/PhotoViewerFragment;->access$12(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v21

    const-string v22, "on"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/vkontakte/android/Photo;->ownerName:Ljava/lang/String;

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerFragment$22;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/PhotoViewerFragment;->access$12(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v21

    const-string v22, "op"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/vkontakte/android/Photo;->ownerPhoto:Ljava/lang/String;

    .line 774
    const-string v21, "d"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerFragment$22;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/PhotoViewerFragment;->access$12(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v21

    const-string v22, "d"

    const-string v23, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    .line 775
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerFragment$22;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/PhotoViewerFragment;->access$12(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerFragment$22;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/PhotoViewerFragment;->access$12(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v21

    const-string v22, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    .line 776
    :cond_2
    const-string v21, "date"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v21

    if-lez v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerFragment$22;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/PhotoViewerFragment;->access$12(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v21

    const-string v22, "date"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/vkontakte/android/Photo;->date:I

    .line 777
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerFragment$22;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/PhotoViewerFragment;->access$2(Lcom/vkontakte/android/PhotoViewerFragment;)Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 778
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .local v10, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 779
    .local v11, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v21, "cu"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v19

    .line 780
    .local v19, "users":Lorg/json/JSONArray;
    if-eqz v19, :cond_4

    .line 781
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v21

    move/from16 v0, v21

    if-lt v5, v0, :cond_8

    .line 787
    .end local v5    # "i":I
    :cond_4
    const-string v21, "((?:(?:http|https)://)?[a-zA-Z\u0430-\u044f\u0410-\u042f0-9-]+\\.[a-zA-Z\u0430-\u044f\u0410-\u042f]{2,4}[a-zA-Z/?\\.=#%&-_]+)"

    invoke-static/range {v21 .. v21}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    .line 788
    .local v12, "ptn1":Ljava/util/regex/Pattern;
    const-string v21, "\\[id(\\d+)\\|([^\\]]+)\\]"

    invoke-static/range {v21 .. v21}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    .line 789
    .local v13, "ptn2":Ljava/util/regex/Pattern;
    const-string v21, "\\[club(\\d+)\\|([^\\]]+)\\]"

    invoke-static/range {v21 .. v21}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    .line 790
    .local v14, "ptn3":Ljava/util/regex/Pattern;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerFragment$22;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/PhotoViewerFragment;->access$12(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v21

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/vkontakte/android/Photo;->comments:Ljava/util/ArrayList;

    .line 791
    const-string v21, "c"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 792
    .local v4, "comments":Lorg/json/JSONArray;
    if-eqz v4, :cond_5

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerFragment$22;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/PhotoViewerFragment;->access$12(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v21

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/vkontakte/android/Photo;->nComments:I

    .line 794
    const/4 v5, 0x1

    .restart local v5    # "i":I
    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v21

    move/from16 v0, v21

    if-lt v5, v0, :cond_a

    .line 824
    .end local v5    # "i":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerFragment$22;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerFragment$22;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/vkontakte/android/PhotoViewerFragment;->access$12(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/vkontakte/android/Photo;->comments:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/vkontakte/android/PhotoViewerFragment;->access$22(Lcom/vkontakte/android/PhotoViewerFragment;Ljava/util/ArrayList;)V

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerFragment$22;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/PhotoViewerFragment;->access$16(Lcom/vkontakte/android/PhotoViewerFragment;)V

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerFragment$22;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/PhotoViewerFragment;->access$19(Lcom/vkontakte/android/PhotoViewerFragment;)Landroid/view/View;

    move-result-object v21

    const v22, 0x7f0600d4

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerFragment$22;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/vkontakte/android/PhotoViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0901ea

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, " <font color=\'#4d6a8b\'>"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerFragment$22;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/PhotoViewerFragment;->access$12(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/vkontakte/android/Photo;->ownerName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "</font>"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerFragment$22;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/PhotoViewerFragment;->access$19(Lcom/vkontakte/android/PhotoViewerFragment;)Landroid/view/View;

    move-result-object v21

    const v22, 0x7f0600d5

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerFragment$22;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/vkontakte/android/PhotoViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f09020a

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerFragment$22;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/vkontakte/android/PhotoViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerFragment$22;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/PhotoViewerFragment;->access$12(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lcom/vkontakte/android/Photo;->date:I

    move/from16 v27, v0

    invoke-static/range {v26 .. v27}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 830
    const-string v21, "l"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 831
    .local v8, "lk":Lorg/json/JSONObject;
    if-eqz v8, :cond_6

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerFragment$22;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/PhotoViewerFragment;->access$12(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v21

    const-string v22, "count"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/vkontakte/android/Photo;->nLikes:I

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerFragment$22;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/PhotoViewerFragment;->access$12(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v22

    const-string v21, "user_likes"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v21

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    const/16 v21, 0x1

    :goto_3
    move/from16 v0, v21

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/vkontakte/android/Photo;->isLiked:Z

    .line 835
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerFragment$22;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/PhotoViewerFragment;->access$12(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v21

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/vkontakte/android/Photo;->infoLoaded:Z

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerFragment$22;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/PhotoViewerFragment;->access$19(Lcom/vkontakte/android/PhotoViewerFragment;)Landroid/view/View;

    move-result-object v21

    const v22, 0x7f0600d6

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/vkontakte/android/LoadMoreCommentsView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerFragment$22;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/vkontakte/android/PhotoViewerFragment;->access$12(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Lcom/vkontakte/android/Photo;->nComments:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerFragment$22;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/PhotoViewerFragment;->access$12(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/vkontakte/android/Photo;->comments:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    sub-int v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Lcom/vkontakte/android/LoadMoreCommentsView;->setNumComments(I)V

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerFragment$22;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/PhotoViewerFragment;->access$19(Lcom/vkontakte/android/PhotoViewerFragment;)Landroid/view/View;

    move-result-object v21

    const v22, 0x7f0600d6

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerFragment$22;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/PhotoViewerFragment;->access$12(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Lcom/vkontakte/android/Photo;->nComments:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerFragment$22;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/PhotoViewerFragment;->access$12(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/vkontakte/android/Photo;->comments:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    sub-int v21, v21, v23

    if-lez v21, :cond_f

    const/16 v21, 0x0

    :goto_4
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerFragment$22;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/PhotoViewerFragment;->updateInfoPanel()V

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerFragment$22;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    check-cast v21, Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/PhotoViewerActivity;->updateInfoPanel()V

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerFragment$22;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    move-object/from16 v21, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-static/range {v21 .. v23}, Lcom/vkontakte/android/PhotoViewerFragment;->access$18(Lcom/vkontakte/android/PhotoViewerFragment;J)V

    .line 842
    .end local v2    # "a":Lorg/json/JSONArray;
    .end local v4    # "comments":Lorg/json/JSONArray;
    .end local v8    # "lk":Lorg/json/JSONObject;
    .end local v10    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v11    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v12    # "ptn1":Ljava/util/regex/Pattern;
    .end local v13    # "ptn2":Ljava/util/regex/Pattern;
    .end local v14    # "ptn3":Ljava/util/regex/Pattern;
    .end local v15    # "resp":Lorg/json/JSONObject;
    .end local v19    # "users":Lorg/json/JSONArray;
    :goto_5
    return-void

    .line 758
    .restart local v2    # "a":Lorg/json/JSONArray;
    .restart local v5    # "i":I
    .restart local v15    # "resp":Lorg/json/JSONObject;
    .restart local v18    # "tags":[Lcom/vkontakte/android/PhotoTag;
    :cond_7
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    .line 759
    .local v17, "tag":Lorg/json/JSONObject;
    new-instance v16, Lcom/vkontakte/android/PhotoTag;

    invoke-direct/range {v16 .. v16}, Lcom/vkontakte/android/PhotoTag;-><init>()V

    .line 760
    .local v16, "t":Lcom/vkontakte/android/PhotoTag;
    const-string v21, "tag_id"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput v0, v1, Lcom/vkontakte/android/PhotoTag;->id:I

    .line 761
    const-string v21, "uid"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput v0, v1, Lcom/vkontakte/android/PhotoTag;->userID:I

    .line 762
    const-string v21, "tagged_name"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/vkontakte/android/PhotoTag;->userName:Ljava/lang/String;

    .line 763
    const-string v21, "x"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput v0, v1, Lcom/vkontakte/android/PhotoTag;->x1:F

    .line 764
    const-string v21, "y"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput v0, v1, Lcom/vkontakte/android/PhotoTag;->y1:F

    .line 765
    const-string v21, "x2"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput v0, v1, Lcom/vkontakte/android/PhotoTag;->x2:F

    .line 766
    const-string v21, "y2"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput v0, v1, Lcom/vkontakte/android/PhotoTag;->y2:F

    .line 767
    aput-object v16, v18, v5

    .line 757
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 782
    .end local v16    # "t":Lcom/vkontakte/android/PhotoTag;
    .end local v17    # "tag":Lorg/json/JSONObject;
    .end local v18    # "tags":[Lcom/vkontakte/android/PhotoTag;
    .restart local v10    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v11    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v19    # "users":Lorg/json/JSONArray;
    :cond_8
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 783
    .local v7, "ju":Lorg/json/JSONObject;
    const-string v21, "uid"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "first_name"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "last_name"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    const-string v21, "uid"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    sget v21, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v23, 0x3f800000    # 1.0f

    cmpl-float v21, v21, v23

    if-lez v21, :cond_9

    const-string v21, "photo_medium_rec"

    :goto_6
    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 784
    :cond_9
    const-string v21, "photo_rec"

    goto :goto_6

    .line 795
    .end local v7    # "ju":Lorg/json/JSONObject;
    .restart local v4    # "comments":Lorg/json/JSONArray;
    .restart local v12    # "ptn1":Ljava/util/regex/Pattern;
    .restart local v13    # "ptn2":Ljava/util/regex/Pattern;
    .restart local v14    # "ptn3":Ljava/util/regex/Pattern;
    :cond_a
    new-instance v3, Lcom/vkontakte/android/NewsComment;

    invoke-direct {v3}, Lcom/vkontakte/android/NewsComment;-><init>()V

    .line 796
    .local v3, "comm":Lcom/vkontakte/android/NewsComment;
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 797
    .local v6, "jcomm":Lorg/json/JSONObject;
    const-string v21, "message"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/vkontakte/android/NewsComment;->text:Ljava/lang/String;

    .line 798
    const-string v21, "from_id"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v3, Lcom/vkontakte/android/NewsComment;->uid:I

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerFragment$22;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/PhotoViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const-string v22, "date"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v21 .. v22}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/vkontakte/android/NewsComment;->time:Ljava/lang/String;

    .line 800
    const-string v21, "cid"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v3, Lcom/vkontakte/android/NewsComment;->cid:I

    .line 801
    iget v0, v3, Lcom/vkontakte/android/NewsComment;->uid:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/vkontakte/android/NewsComment;->userName:Ljava/lang/String;

    .line 802
    iget v0, v3, Lcom/vkontakte/android/NewsComment;->uid:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/vkontakte/android/NewsComment;->userPhoto:Ljava/lang/String;

    .line 803
    new-instance v21, Ljava/util/Vector;

    invoke-direct/range {v21 .. v21}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    .line 804
    new-instance v21, Ljava/util/Vector;

    invoke-direct/range {v21 .. v21}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    .line 805
    iget-object v0, v3, Lcom/vkontakte/android/NewsComment;->text:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 806
    .local v9, "matcher":Ljava/util/regex/Matcher;
    :goto_7
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v21

    if-nez v21, :cond_b

    .line 810
    iget-object v0, v3, Lcom/vkontakte/android/NewsComment;->text:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 811
    :goto_8
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v21

    if-nez v21, :cond_c

    .line 815
    iget-object v0, v3, Lcom/vkontakte/android/NewsComment;->text:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 816
    :goto_9
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v21

    if-nez v21, :cond_d

    .line 820
    iget-object v0, v3, Lcom/vkontakte/android/NewsComment;->text:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "\\[(id|club)(\\d+)\\|([^\\]]+)\\]"

    const-string v23, "$3"

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/vkontakte/android/NewsComment;->text:Ljava/lang/String;

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerFragment$22;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/PhotoViewerFragment;->access$12(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkontakte/android/Photo;->comments:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 794
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 807
    :cond_b
    iget-object v0, v3, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "vkontakte://profile/"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 808
    iget-object v0, v3, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 841
    .end local v2    # "a":Lorg/json/JSONArray;
    .end local v3    # "comm":Lcom/vkontakte/android/NewsComment;
    .end local v4    # "comments":Lorg/json/JSONArray;
    .end local v5    # "i":I
    .end local v6    # "jcomm":Lorg/json/JSONObject;
    .end local v9    # "matcher":Ljava/util/regex/Matcher;
    .end local v10    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v11    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v12    # "ptn1":Ljava/util/regex/Pattern;
    .end local v13    # "ptn2":Ljava/util/regex/Pattern;
    .end local v14    # "ptn3":Ljava/util/regex/Pattern;
    .end local v15    # "resp":Lorg/json/JSONObject;
    .end local v19    # "users":Lorg/json/JSONArray;
    :catch_0
    move-exception v20

    .local v20, "x":Ljava/lang/Exception;
    const-string v21, "vk"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 812
    .end local v20    # "x":Ljava/lang/Exception;
    .restart local v2    # "a":Lorg/json/JSONArray;
    .restart local v3    # "comm":Lcom/vkontakte/android/NewsComment;
    .restart local v4    # "comments":Lorg/json/JSONArray;
    .restart local v5    # "i":I
    .restart local v6    # "jcomm":Lorg/json/JSONObject;
    .restart local v9    # "matcher":Ljava/util/regex/Matcher;
    .restart local v10    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v11    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v12    # "ptn1":Ljava/util/regex/Pattern;
    .restart local v13    # "ptn2":Ljava/util/regex/Pattern;
    .restart local v14    # "ptn3":Ljava/util/regex/Pattern;
    .restart local v15    # "resp":Lorg/json/JSONObject;
    .restart local v19    # "users":Lorg/json/JSONArray;
    :cond_c
    :try_start_1
    iget-object v0, v3, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "vkontakte://profile/-"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 813
    iget-object v0, v3, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 817
    :cond_d
    iget-object v0, v3, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "vklink://view/?"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 818
    iget-object v0, v3, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    move-object/from16 v21, v0

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_9

    .line 833
    .end local v3    # "comm":Lcom/vkontakte/android/NewsComment;
    .end local v5    # "i":I
    .end local v6    # "jcomm":Lorg/json/JSONObject;
    .end local v9    # "matcher":Ljava/util/regex/Matcher;
    .restart local v8    # "lk":Lorg/json/JSONObject;
    :cond_e
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 837
    :cond_f
    const/16 v21, 0x8

    goto/16 :goto_4
.end method

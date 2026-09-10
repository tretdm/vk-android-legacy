.class Lcom/vkontakte/android/WallView$19$1;
.super Ljava/lang/Object;
.source "WallView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/WallView$19;->success([Lcom/vkontakte/android/NewsEntry;ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/WallView$19;

.field private final synthetic val$news:[Lcom/vkontakte/android/NewsEntry;

.field private final synthetic val$refresh:Z

.field private final synthetic val$status:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/WallView$19;Ljava/lang/Object;[Lcom/vkontakte/android/NewsEntry;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/WallView$19$1;->this$1:Lcom/vkontakte/android/WallView$19;

    iput-object p2, p0, Lcom/vkontakte/android/WallView$19$1;->val$status:Ljava/lang/Object;

    iput-object p3, p0, Lcom/vkontakte/android/WallView$19$1;->val$news:[Lcom/vkontakte/android/NewsEntry;

    iput-boolean p4, p0, Lcom/vkontakte/android/WallView$19$1;->val$refresh:Z

    .line 926
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const v11, 0x7f060119

    const/16 v10, 0xa

    const/4 v6, 0x1

    const v9, 0x7f060101

    const/4 v7, 0x0

    .line 927
    iget-object v4, p0, Lcom/vkontakte/android/WallView$19$1;->val$status:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 928
    iget-object v4, p0, Lcom/vkontakte/android/WallView$19$1;->this$1:Lcom/vkontakte/android/WallView$19;

    invoke-static {v4}, Lcom/vkontakte/android/WallView$19;->access$0(Lcom/vkontakte/android/WallView$19;)Lcom/vkontakte/android/WallView;

    move-result-object v4

    const-string v5, "status"

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/WallView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    .line 929
    .local v3, "sv":Landroid/view/View;
    const-string v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "STATUS = "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/vkontakte/android/WallView$19$1;->val$status:Ljava/lang/Object;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "   "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/vkontakte/android/WallView$19$1;->val$status:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    iget-object v4, p0, Lcom/vkontakte/android/WallView$19$1;->val$status:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/vkontakte/android/WallView$19$1;->val$status:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 931
    iget-object v4, p0, Lcom/vkontakte/android/WallView$19$1;->this$1:Lcom/vkontakte/android/WallView$19;

    invoke-static {v4}, Lcom/vkontakte/android/WallView$19;->access$0(Lcom/vkontakte/android/WallView$19;)Lcom/vkontakte/android/WallView;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/WallView;->access$19(Lcom/vkontakte/android/WallView;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/vkontakte/android/WallView$19$1;->val$status:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 932
    iget-object v4, p0, Lcom/vkontakte/android/WallView$19$1;->this$1:Lcom/vkontakte/android/WallView$19;

    invoke-static {v4}, Lcom/vkontakte/android/WallView$19;->access$0(Lcom/vkontakte/android/WallView$19;)Lcom/vkontakte/android/WallView;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/WallView;->access$20(Lcom/vkontakte/android/WallView;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/vkontakte/android/WallView$19$1;->val$status:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 933
    if-eqz v3, :cond_0

    .line 934
    iget-object v4, p0, Lcom/vkontakte/android/WallView$19$1;->this$1:Lcom/vkontakte/android/WallView$19;

    invoke-static {v4}, Lcom/vkontakte/android/WallView$19;->access$0(Lcom/vkontakte/android/WallView$19;)Lcom/vkontakte/android/WallView;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/WallView;->access$0(Lcom/vkontakte/android/WallView;)I

    move-result v4

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-eq v4, v5, :cond_5

    .line 935
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 936
    invoke-virtual {v3, v7}, Landroid/view/View;->setClickable(Z)V

    .line 941
    :goto_0
    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/vkontakte/android/WallView$19$1;->val$status:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 943
    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/WallView$19$1;->this$1:Lcom/vkontakte/android/WallView$19;

    invoke-static {v4}, Lcom/vkontakte/android/WallView$19;->access$0(Lcom/vkontakte/android/WallView$19;)Lcom/vkontakte/android/WallView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/vkontakte/android/WallView;->access$22(Lcom/vkontakte/android/WallView;Lcom/vkontakte/android/AudioFile;)V

    .line 945
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/WallView$19$1;->val$status:Ljava/lang/Object;

    instance-of v4, v4, Lcom/vkontakte/android/AudioFile;

    if-eqz v4, :cond_2

    .line 946
    iget-object v4, p0, Lcom/vkontakte/android/WallView$19$1;->this$1:Lcom/vkontakte/android/WallView$19;

    invoke-static {v4}, Lcom/vkontakte/android/WallView$19;->access$0(Lcom/vkontakte/android/WallView$19;)Lcom/vkontakte/android/WallView;

    move-result-object v5

    iget-object v4, p0, Lcom/vkontakte/android/WallView$19$1;->val$status:Ljava/lang/Object;

    check-cast v4, Lcom/vkontakte/android/AudioFile;

    invoke-static {v5, v4}, Lcom/vkontakte/android/WallView;->access$22(Lcom/vkontakte/android/WallView;Lcom/vkontakte/android/AudioFile;)V

    .line 947
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/vkontakte/android/WallView$19$1;->this$1:Lcom/vkontakte/android/WallView$19;

    invoke-static {v5}, Lcom/vkontakte/android/WallView$19;->access$0(Lcom/vkontakte/android/WallView$19;)Lcom/vkontakte/android/WallView;

    move-result-object v5

    invoke-static {v5}, Lcom/vkontakte/android/WallView;->access$10(Lcom/vkontakte/android/WallView;)Lcom/vkontakte/android/AudioFile;

    move-result-object v5

    iget-object v5, v5, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vkontakte/android/WallView$19$1;->this$1:Lcom/vkontakte/android/WallView$19;

    invoke-static {v5}, Lcom/vkontakte/android/WallView$19;->access$0(Lcom/vkontakte/android/WallView$19;)Lcom/vkontakte/android/WallView;

    move-result-object v5

    invoke-static {v5}, Lcom/vkontakte/android/WallView;->access$10(Lcom/vkontakte/android/WallView;)Lcom/vkontakte/android/AudioFile;

    move-result-object v5

    iget-object v5, v5, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 948
    .local v2, "st":Ljava/lang/String;
    iget-object v4, p0, Lcom/vkontakte/android/WallView$19$1;->this$1:Lcom/vkontakte/android/WallView$19;

    invoke-static {v4}, Lcom/vkontakte/android/WallView$19;->access$0(Lcom/vkontakte/android/WallView$19;)Lcom/vkontakte/android/WallView;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/WallView;->access$19(Lcom/vkontakte/android/WallView;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 949
    iget-object v4, p0, Lcom/vkontakte/android/WallView$19$1;->this$1:Lcom/vkontakte/android/WallView$19;

    invoke-static {v4}, Lcom/vkontakte/android/WallView$19;->access$0(Lcom/vkontakte/android/WallView$19;)Lcom/vkontakte/android/WallView;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/WallView;->access$20(Lcom/vkontakte/android/WallView;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 950
    if-eqz v3, :cond_2

    .line 951
    iget-object v4, p0, Lcom/vkontakte/android/WallView$19$1;->this$1:Lcom/vkontakte/android/WallView$19;

    invoke-static {v4}, Lcom/vkontakte/android/WallView$19;->access$0(Lcom/vkontakte/android/WallView$19;)Lcom/vkontakte/android/WallView;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/WallView;->access$21(Lcom/vkontakte/android/WallView;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 952
    iget-object v4, p0, Lcom/vkontakte/android/WallView$19$1;->this$1:Lcom/vkontakte/android/WallView$19;

    invoke-static {v4}, Lcom/vkontakte/android/WallView$19;->access$0(Lcom/vkontakte/android/WallView$19;)Lcom/vkontakte/android/WallView;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/WallView;->access$0(Lcom/vkontakte/android/WallView;)I

    move-result v4

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-eq v4, v5, :cond_6

    iget-object v4, p0, Lcom/vkontakte/android/WallView$19$1;->this$1:Lcom/vkontakte/android/WallView$19;

    invoke-static {v4}, Lcom/vkontakte/android/WallView$19;->access$0(Lcom/vkontakte/android/WallView$19;)Lcom/vkontakte/android/WallView;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/WallView;->access$0(Lcom/vkontakte/android/WallView;)I

    move-result v4

    if-eqz v4, :cond_6

    move v4, v6

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    .line 953
    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 957
    .end local v2    # "st":Ljava/lang/String;
    .end local v3    # "sv":Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lcom/vkontakte/android/WallView$19$1;->this$1:Lcom/vkontakte/android/WallView$19;

    invoke-static {v4}, Lcom/vkontakte/android/WallView$19;->access$0(Lcom/vkontakte/android/WallView$19;)Lcom/vkontakte/android/WallView;

    move-result-object v4

    iget-object v4, v4, Lcom/vkontakte/android/WallView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ui/RefreshableListView;->setVisibility(I)V

    .line 958
    iget-object v4, p0, Lcom/vkontakte/android/WallView$19$1;->val$news:[Lcom/vkontakte/android/NewsEntry;

    array-length v4, v4

    if-gt v4, v10, :cond_9

    .line 959
    iget-object v4, p0, Lcom/vkontakte/android/WallView$19$1;->this$1:Lcom/vkontakte/android/WallView$19;

    invoke-static {v4}, Lcom/vkontakte/android/WallView$19;->access$0(Lcom/vkontakte/android/WallView$19;)Lcom/vkontakte/android/WallView;

    move-result-object v4

    iget-boolean v4, v4, Lcom/vkontakte/android/WallView;->preloading:Z

    if-eqz v4, :cond_8

    .line 960
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v4, p0, Lcom/vkontakte/android/WallView$19$1;->val$news:[Lcom/vkontakte/android/NewsEntry;

    array-length v4, v4

    if-lt v0, v4, :cond_7

    .line 961
    iget-object v4, p0, Lcom/vkontakte/android/WallView$19$1;->this$1:Lcom/vkontakte/android/WallView$19;

    invoke-static {v4}, Lcom/vkontakte/android/WallView$19;->access$0(Lcom/vkontakte/android/WallView$19;)Lcom/vkontakte/android/WallView;

    move-result-object v4

    iput-boolean v7, v4, Lcom/vkontakte/android/WallView;->dataLoading:Z

    .line 972
    .end local v0    # "i":I
    :cond_3
    :goto_3
    iget-object v4, p0, Lcom/vkontakte/android/WallView$19$1;->this$1:Lcom/vkontakte/android/WallView$19;

    invoke-static {v4}, Lcom/vkontakte/android/WallView$19;->access$0(Lcom/vkontakte/android/WallView$19;)Lcom/vkontakte/android/WallView;

    move-result-object v4

    iput-boolean v7, v4, Lcom/vkontakte/android/WallView;->preloading:Z

    .line 973
    iget-object v4, p0, Lcom/vkontakte/android/WallView$19$1;->this$1:Lcom/vkontakte/android/WallView$19;

    invoke-static {v4}, Lcom/vkontakte/android/WallView$19;->access$0(Lcom/vkontakte/android/WallView$19;)Lcom/vkontakte/android/WallView;

    move-result-object v4

    iget-boolean v4, v4, Lcom/vkontakte/android/WallView;->preloadOnReady:Z

    if-eqz v4, :cond_4

    .line 974
    iget-object v4, p0, Lcom/vkontakte/android/WallView$19$1;->this$1:Lcom/vkontakte/android/WallView$19;

    invoke-static {v4}, Lcom/vkontakte/android/WallView$19;->access$0(Lcom/vkontakte/android/WallView$19;)Lcom/vkontakte/android/WallView;

    move-result-object v4

    iput-boolean v7, v4, Lcom/vkontakte/android/WallView;->preloadOnReady:Z

    .line 975
    iget-object v4, p0, Lcom/vkontakte/android/WallView$19$1;->this$1:Lcom/vkontakte/android/WallView$19;

    invoke-static {v4}, Lcom/vkontakte/android/WallView$19;->access$0(Lcom/vkontakte/android/WallView$19;)Lcom/vkontakte/android/WallView;

    move-result-object v4

    iput-boolean v6, v4, Lcom/vkontakte/android/WallView;->preloading:Z

    .line 976
    iget-object v4, p0, Lcom/vkontakte/android/WallView$19$1;->this$1:Lcom/vkontakte/android/WallView$19;

    invoke-static {v4}, Lcom/vkontakte/android/WallView$19;->access$0(Lcom/vkontakte/android/WallView$19;)Lcom/vkontakte/android/WallView;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/WallView;->loadData(Z)V

    .line 978
    :cond_4
    return-void

    .line 938
    .restart local v3    # "sv":Landroid/view/View;
    :cond_5
    iget-object v4, p0, Lcom/vkontakte/android/WallView$19$1;->this$1:Lcom/vkontakte/android/WallView$19;

    invoke-static {v4}, Lcom/vkontakte/android/WallView$19;->access$0(Lcom/vkontakte/android/WallView$19;)Lcom/vkontakte/android/WallView;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/WallView;->access$21(Lcom/vkontakte/android/WallView;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 939
    invoke-virtual {v3, v6}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_0

    .restart local v2    # "st":Ljava/lang/String;
    :cond_6
    move v4, v7

    .line 952
    goto :goto_1

    .line 960
    .end local v2    # "st":Ljava/lang/String;
    .end local v3    # "sv":Landroid/view/View;
    .restart local v0    # "i":I
    :cond_7
    iget-object v4, p0, Lcom/vkontakte/android/WallView$19$1;->this$1:Lcom/vkontakte/android/WallView$19;

    invoke-static {v4}, Lcom/vkontakte/android/WallView$19;->access$0(Lcom/vkontakte/android/WallView$19;)Lcom/vkontakte/android/WallView;

    move-result-object v4

    iget-object v4, v4, Lcom/vkontakte/android/WallView;->preloadedNews:Ljava/util/Vector;

    iget-object v5, p0, Lcom/vkontakte/android/WallView$19$1;->val$news:[Lcom/vkontakte/android/NewsEntry;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 963
    .end local v0    # "i":I
    :cond_8
    iget-object v4, p0, Lcom/vkontakte/android/WallView$19$1;->this$1:Lcom/vkontakte/android/WallView$19;

    invoke-static {v4}, Lcom/vkontakte/android/WallView$19;->access$0(Lcom/vkontakte/android/WallView$19;)Lcom/vkontakte/android/WallView;

    move-result-object v4

    iget-object v5, p0, Lcom/vkontakte/android/WallView$19$1;->val$news:[Lcom/vkontakte/android/NewsEntry;

    iget-boolean v8, p0, Lcom/vkontakte/android/WallView$19$1;->val$refresh:Z

    invoke-virtual {v4, v5, v8}, Lcom/vkontakte/android/WallView;->onDataLoaded([Lcom/vkontakte/android/NewsEntry;Z)V

    goto :goto_3

    .line 966
    :cond_9
    new-array v1, v10, [Lcom/vkontakte/android/NewsEntry;

    .line 967
    .local v1, "nn":[Lcom/vkontakte/android/NewsEntry;
    iget-object v4, p0, Lcom/vkontakte/android/WallView$19$1;->val$news:[Lcom/vkontakte/android/NewsEntry;

    invoke-static {v4, v7, v1, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 968
    iget-object v4, p0, Lcom/vkontakte/android/WallView$19$1;->this$1:Lcom/vkontakte/android/WallView$19;

    invoke-static {v4}, Lcom/vkontakte/android/WallView$19;->access$0(Lcom/vkontakte/android/WallView$19;)Lcom/vkontakte/android/WallView;

    move-result-object v4

    iget-boolean v5, p0, Lcom/vkontakte/android/WallView$19$1;->val$refresh:Z

    invoke-virtual {v4, v1, v5}, Lcom/vkontakte/android/WallView;->onDataLoaded([Lcom/vkontakte/android/NewsEntry;Z)V

    .line 969
    iget-boolean v4, p0, Lcom/vkontakte/android/WallView$19$1;->val$refresh:Z

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/vkontakte/android/WallView$19$1;->this$1:Lcom/vkontakte/android/WallView$19;

    invoke-static {v4}, Lcom/vkontakte/android/WallView$19;->access$0(Lcom/vkontakte/android/WallView$19;)Lcom/vkontakte/android/WallView;

    move-result-object v4

    iget-object v4, v4, Lcom/vkontakte/android/WallView;->preloadedNews:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    .line 970
    :cond_a
    const/16 v0, 0xa

    .restart local v0    # "i":I
    :goto_4
    iget-object v4, p0, Lcom/vkontakte/android/WallView$19$1;->val$news:[Lcom/vkontakte/android/NewsEntry;

    array-length v4, v4

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Lcom/vkontakte/android/WallView$19$1;->this$1:Lcom/vkontakte/android/WallView$19;

    invoke-static {v4}, Lcom/vkontakte/android/WallView$19;->access$0(Lcom/vkontakte/android/WallView$19;)Lcom/vkontakte/android/WallView;

    move-result-object v4

    iget-object v4, v4, Lcom/vkontakte/android/WallView;->preloadedNews:Ljava/util/Vector;

    iget-object v5, p0, Lcom/vkontakte/android/WallView$19$1;->val$news:[Lcom/vkontakte/android/NewsEntry;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

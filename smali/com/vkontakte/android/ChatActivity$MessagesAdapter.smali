.class Lcom/vkontakte/android/ChatActivity$MessagesAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessagesAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ChatActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 1584
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity$MessagesAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/ChatActivity;Lcom/vkontakte/android/ChatActivity$MessagesAdapter;)V
    .locals 0

    .prologue
    .line 1584
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ChatActivity$MessagesAdapter;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$MessagesAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 1592
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 1597
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$MessagesAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Message;

    iget-boolean v0, v0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "pos"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v11, 0x0

    const v10, 0x77359400

    const/4 v0, 0x1

    .line 1617
    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$MessagesAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v1}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/Message;

    .line 1618
    .local v6, "msg":Lcom/vkontakte/android/Message;
    iget-boolean v1, v6, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    if-eqz v1, :cond_2

    .line 1619
    const/4 v8, 0x0

    .line 1620
    .local v8, "t":Landroid/widget/TextView;
    if-nez p2, :cond_0

    .line 1621
    new-instance v8, Landroid/widget/TextView;

    .end local v8    # "t":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$MessagesAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1622
    .restart local v8    # "t":Landroid/widget/TextView;
    const v1, -0x796957

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1623
    const/16 v1, 0x11

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1624
    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1625
    const v1, 0x33d6bf95    # 1.0E-7f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, -0xf0b09

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1626
    invoke-virtual {v8}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1630
    :goto_0
    iget-object v0, v6, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1631
    iget-object v0, v6, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1670
    .end local v8    # "t":Landroid/widget/TextView;
    :goto_1
    return-object v8

    .restart local v8    # "t":Landroid/widget/TextView;
    :cond_0
    move-object v8, p2

    .line 1628
    check-cast v8, Landroid/widget/TextView;

    goto :goto_0

    .line 1633
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$MessagesAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, v6, Lcom/vkontakte/android/Message;->time:I

    invoke-static {v0, v1}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1636
    .end local v8    # "t":Landroid/widget/TextView;
    :cond_2
    if-nez p2, :cond_3

    .line 1637
    new-instance p2, Lcom/vkontakte/android/MessageView;

    .end local p2    # "view":Landroid/view/View;
    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$MessagesAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$MessagesAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v2}, Lcom/vkontakte/android/ChatActivity;->access$0(Lcom/vkontakte/android/ChatActivity;)I

    move-result v2

    if-le v2, v10, :cond_5

    :goto_2
    invoke-direct {p2, v1, v0}, Lcom/vkontakte/android/MessageView;-><init>(Landroid/content/Context;Z)V

    .line 1638
    .restart local p2    # "view":Landroid/view/View;
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    move-object v0, p2

    .line 1640
    check-cast v0, Lcom/vkontakte/android/MessageView;

    iget-boolean v1, v6, Lcom/vkontakte/android/Message;->out:Z

    iget-object v2, v6, Lcom/vkontakte/android/Message;->displayableText:Ljava/lang/CharSequence;

    iget-object v3, v6, Lcom/vkontakte/android/Message;->attachCount:[I

    iget-boolean v4, v6, Lcom/vkontakte/android/Message;->readState:Z

    iget-boolean v5, v6, Lcom/vkontakte/android/Message;->sendFailed:Z

    invoke-virtual/range {v0 .. v6}, Lcom/vkontakte/android/MessageView;->setData(ZLjava/lang/CharSequence;[IZZLcom/vkontakte/android/Message;)V

    .line 1641
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$MessagesAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$0(Lcom/vkontakte/android/ChatActivity;)I

    move-result v0

    if-le v0, v10, :cond_4

    .line 1642
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$MessagesAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$11(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v1

    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$MessagesAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$12(Lcom/vkontakte/android/ChatActivity;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$MessagesAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Message;

    iget v0, v0, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/ui/ListImageLoader;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, p2

    .line 1643
    check-cast v0, Lcom/vkontakte/android/MessageView;

    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$MessagesAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v1}, Lcom/vkontakte/android/ChatActivity;->access$11(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v2

    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$MessagesAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v1}, Lcom/vkontakte/android/ChatActivity;->access$12(Lcom/vkontakte/android/ChatActivity;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$MessagesAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v1}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Message;

    iget v1, v1, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/vkontakte/android/ui/ListImageLoader;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MessageView;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 1648
    :cond_4
    :goto_3
    const/4 v9, 0x0

    .line 1649
    .local v9, "tn":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    iget-object v0, v6, Lcom/vkontakte/android/Message;->photoURLs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v7, v0, :cond_7

    .line 1655
    const/4 v7, 0x0

    :goto_5
    iget-object v0, v6, Lcom/vkontakte/android/Message;->videoThumbs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v7, v0, :cond_9

    .line 1661
    const/4 v7, 0x0

    :goto_6
    iget-object v0, v6, Lcom/vkontakte/android/Message;->docThumbs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v7, v0, :cond_b

    move-object v8, p2

    .line 1670
    goto/16 :goto_1

    .line 1637
    .end local v7    # "i":I
    .end local v9    # "tn":I
    .end local p2    # "view":Landroid/view/View;
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_2

    .restart local p2    # "view":Landroid/view/View;
    :cond_6
    move-object v0, p2

    .line 1645
    check-cast v0, Lcom/vkontakte/android/MessageView;

    invoke-virtual {v0, v11}, Lcom/vkontakte/android/MessageView;->setPhoto(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 1650
    .restart local v7    # "i":I
    .restart local v9    # "tn":I
    :cond_7
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$MessagesAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$11(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v1

    iget-object v0, v6, Lcom/vkontakte/android/Message;->photoURLs:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/ui/ListImageLoader;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p2

    .line 1651
    check-cast v0, Lcom/vkontakte/android/MessageView;

    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$MessagesAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v1}, Lcom/vkontakte/android/ChatActivity;->access$11(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v2

    iget-object v1, v6, Lcom/vkontakte/android/Message;->photoURLs:Ljava/util/Vector;

    invoke-virtual {v1, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/vkontakte/android/ui/ListImageLoader;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lcom/vkontakte/android/MessageView;->setAttPhoto(ILandroid/graphics/Bitmap;)V

    .line 1649
    :goto_7
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_8
    move-object v0, p2

    .line 1653
    check-cast v0, Lcom/vkontakte/android/MessageView;

    invoke-virtual {v0, v9, v11}, Lcom/vkontakte/android/MessageView;->setAttPhoto(ILandroid/graphics/Bitmap;)V

    goto :goto_7

    .line 1656
    :cond_9
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$MessagesAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$11(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v1

    iget-object v0, v6, Lcom/vkontakte/android/Message;->videoThumbs:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/ui/ListImageLoader;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, p2

    .line 1657
    check-cast v0, Lcom/vkontakte/android/MessageView;

    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$MessagesAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v1}, Lcom/vkontakte/android/ChatActivity;->access$11(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v2

    iget-object v1, v6, Lcom/vkontakte/android/Message;->videoThumbs:Ljava/util/Vector;

    invoke-virtual {v1, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/vkontakte/android/ui/ListImageLoader;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lcom/vkontakte/android/MessageView;->setAttPhoto(ILandroid/graphics/Bitmap;)V

    .line 1655
    :goto_8
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5

    :cond_a
    move-object v0, p2

    .line 1659
    check-cast v0, Lcom/vkontakte/android/MessageView;

    invoke-virtual {v0, v9}, Lcom/vkontakte/android/MessageView;->setAttPhotoEmpty(I)V

    goto :goto_8

    .line 1662
    :cond_b
    iget-object v0, v6, Lcom/vkontakte/android/Message;->docThumbs:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    .line 1661
    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_6

    .line 1663
    :cond_c
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$MessagesAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$11(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v1

    iget-object v0, v6, Lcom/vkontakte/android/Message;->docThumbs:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/ui/ListImageLoader;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    move-object v0, p2

    .line 1664
    check-cast v0, Lcom/vkontakte/android/MessageView;

    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$MessagesAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v1}, Lcom/vkontakte/android/ChatActivity;->access$11(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v2

    iget-object v1, v6, Lcom/vkontakte/android/Message;->docThumbs:Ljava/util/Vector;

    invoke-virtual {v1, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/vkontakte/android/ui/ListImageLoader;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lcom/vkontakte/android/MessageView;->setAttPhoto(ILandroid/graphics/Bitmap;)V

    .line 1667
    :goto_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_d
    move-object v0, p2

    .line 1666
    check-cast v0, Lcom/vkontakte/android/MessageView;

    invoke-virtual {v0, v9}, Lcom/vkontakte/android/MessageView;->setAttPhotoEmpty(I)V

    goto :goto_a
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1607
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 1612
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$MessagesAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Message;

    iget-boolean v0, v0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

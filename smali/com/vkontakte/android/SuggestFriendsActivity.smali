.class public Lcom/vkontakte/android/SuggestFriendsActivity;
.super Lcom/vkontakte/android/UserListActivity;
.source "SuggestFriendsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/SuggestFriendsActivity$SuggestFriendsAdapter;
    }
.end annotation


# instance fields
.field private btnPanel:Landroid/view/View;

.field private clickListener:Landroid/view/View$OnClickListener;

.field private headerView:Landroid/widget/TextView;

.field private pdlg:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/vkontakte/android/UserListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/SuggestFriendsActivity;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vkontakte/android/SuggestFriendsActivity;->clickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/SuggestFriendsActivity;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/vkontakte/android/SuggestFriendsActivity;->sendRequests()V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/SuggestFriendsActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vkontakte/android/SuggestFriendsActivity;->btnPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/SuggestFriendsActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/SuggestFriendsActivity;->pdlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/SuggestFriendsActivity;Ljava/util/Vector;)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/vkontakte/android/SuggestFriendsActivity;->doSendRequests(Ljava/util/Vector;)V

    return-void
.end method

.method private doSendRequests(Ljava/util/Vector;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "uids":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 109
    .local v2, "strs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    const/16 v4, 0x19

    if-ge v3, v4, :cond_0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 112
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "return ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "];"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "execCode":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 114
    .local v1, "num":I
    new-instance v3, Lcom/vkontakte/android/APIRequest;

    const-string v4, "execute"

    invoke-direct {v3, v4}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 115
    const-string v4, "code"

    invoke-virtual {v3, v4, v0}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 116
    new-instance v4, Lcom/vkontakte/android/SuggestFriendsActivity$4;

    invoke-direct {v4, p0, v1, p1}, Lcom/vkontakte/android/SuggestFriendsActivity$4;-><init>(Lcom/vkontakte/android/SuggestFriendsActivity;ILjava/util/Vector;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 129
    invoke-virtual {v3, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 130
    return-void

    .line 110
    .end local v0    # "execCode":Ljava/lang/String;
    .end local v1    # "num":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "API.friends.add({uid:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "})"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getLocalPhoneNumbers()Ljava/util/Vector;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/vkontakte/android/SuggestFriendsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "account_type"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "contact_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 134
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 135
    :cond_0
    const-string v0, "vk"

    const-string v1, "cursor.getCount = 0 || cursor==null"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/4 v11, 0x0

    .line 167
    :goto_0
    return-object v11

    .line 138
    :cond_1
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 139
    .local v10, "idsToGet":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Long;>;"
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 141
    :cond_2
    const-string v0, "com.vkontakte.account"

    const-string v1, "account_type"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 142
    const-string v0, "contact_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 146
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 147
    const-string v0, "vk"

    const-string v1, "idsToGet.size = 0"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const/4 v11, 0x0

    goto :goto_0

    .line 150
    :cond_4
    const-string v9, ""

    .line 151
    .local v9, "ids":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 154
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 156
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 158
    .local v11, "numbers":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/vkontakte/android/SuggestFriendsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data1"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mimetype=\'vnd.android.cursor.item/phone_v2\' AND data2=2 AND raw_contact_id IN ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 159
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 160
    :cond_5
    const-string v0, "vk"

    const-string v1, "cursor2.getCount = 0"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 151
    .end local v11    # "numbers":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 152
    .local v7, "id":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 163
    .end local v7    # "id":J
    .restart local v11    # "numbers":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 165
    :cond_8
    const-string v0, "data1"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0
.end method

.method private sendRequests()V
    .locals 5

    .prologue
    .line 91
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 92
    .local v1, "uidsToAdd":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/SuggestFriendsActivity;->users:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 95
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 96
    invoke-virtual {p0}, Lcom/vkontakte/android/SuggestFriendsActivity;->finish()V

    .line 105
    :goto_1
    return-void

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/SuggestFriendsActivity;->users:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    iget-boolean v2, v2, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vkontakte/android/SuggestFriendsActivity;->users:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    iget v2, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_2
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/SuggestFriendsActivity;->pdlg:Landroid/app/ProgressDialog;

    .line 100
    iget-object v2, p0, Lcom/vkontakte/android/SuggestFriendsActivity;->pdlg:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/vkontakte/android/SuggestFriendsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090161

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v2, p0, Lcom/vkontakte/android/SuggestFriendsActivity;->pdlg:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 102
    iget-object v2, p0, Lcom/vkontakte/android/SuggestFriendsActivity;->pdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 103
    iget-object v2, p0, Lcom/vkontakte/android/SuggestFriendsActivity;->pdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 104
    invoke-direct {p0, v1}, Lcom/vkontakte/android/SuggestFriendsActivity;->doSendRequests(Ljava/util/Vector;)V

    goto :goto_1
.end method


# virtual methods
.method protected getAdapter()Landroid/widget/ListAdapter;
    .locals 5

    .prologue
    .line 172
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/SuggestFriendsActivity;->headerView:Landroid/widget/TextView;

    .line 173
    iget-object v1, p0, Lcom/vkontakte/android/SuggestFriendsActivity;->headerView:Landroid/widget/TextView;

    const v2, 0x7f09015b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 174
    iget-object v1, p0, Lcom/vkontakte/android/SuggestFriendsActivity;->headerView:Landroid/widget/TextView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    iget-object v1, p0, Lcom/vkontakte/android/SuggestFriendsActivity;->headerView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 176
    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    .line 177
    .local v0, "padding":I
    iget-object v1, p0, Lcom/vkontakte/android/SuggestFriendsActivity;->headerView:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 178
    iget-object v1, p0, Lcom/vkontakte/android/SuggestFriendsActivity;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/vkontakte/android/SuggestFriendsActivity;->headerView:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 179
    new-instance v1, Lcom/vkontakte/android/SuggestFriendsActivity$SuggestFriendsAdapter;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/SuggestFriendsActivity$SuggestFriendsAdapter;-><init>(Lcom/vkontakte/android/SuggestFriendsActivity;)V

    return-object v1
.end method

.method public loadData()V
    .locals 3

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/vkontakte/android/SuggestFriendsActivity;->getLocalPhoneNumbers()Ljava/util/Vector;

    move-result-object v0

    .line 68
    .local v0, "localNumbers":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/SuggestFriendsActivity;->finish()V

    .line 88
    :goto_0
    return-void

    .line 72
    :cond_1
    new-instance v1, Lcom/vkontakte/android/api/FriendsGetByPhones;

    invoke-direct {v1, v0}, Lcom/vkontakte/android/api/FriendsGetByPhones;-><init>(Ljava/util/Vector;)V

    .line 73
    new-instance v2, Lcom/vkontakte/android/SuggestFriendsActivity$3;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/SuggestFriendsActivity$3;-><init>(Lcom/vkontakte/android/SuggestFriendsActivity;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/api/FriendsGetByPhones;->setCallback(Lcom/vkontakte/android/api/FriendsGetByPhones$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 87
    invoke-virtual {v1, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x7f060046

    .line 38
    invoke-super {p0, p1}, Lcom/vkontakte/android/UserListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v1, 0x7f030010

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/SuggestFriendsActivity;->btnPanel:Landroid/view/View;

    .line 40
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x42420000    # 48.5f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 41
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 42
    iget-object v1, p0, Lcom/vkontakte/android/SuggestFriendsActivity;->btnPanel:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    iget-object v1, p0, Lcom/vkontakte/android/SuggestFriendsActivity;->btnPanel:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09015d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 44
    iget-object v1, p0, Lcom/vkontakte/android/SuggestFriendsActivity;->btnPanel:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 45
    iget-object v1, p0, Lcom/vkontakte/android/SuggestFriendsActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkontakte/android/SuggestFriendsActivity;->btnPanel:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 47
    iget-object v1, p0, Lcom/vkontakte/android/SuggestFriendsActivity;->btnPanel:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 49
    new-instance v1, Lcom/vkontakte/android/SuggestFriendsActivity$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/SuggestFriendsActivity$1;-><init>(Lcom/vkontakte/android/SuggestFriendsActivity;)V

    iput-object v1, p0, Lcom/vkontakte/android/SuggestFriendsActivity;->clickListener:Landroid/view/View$OnClickListener;

    .line 57
    iget-object v1, p0, Lcom/vkontakte/android/SuggestFriendsActivity;->btnPanel:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/SuggestFriendsActivity$2;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/SuggestFriendsActivity$2;-><init>(Lcom/vkontakte/android/SuggestFriendsActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
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
    .local p1, "aview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/high16 v9, 0x42420000    # 48.5f

    const-wide/16 v7, 0xc8

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 184
    iget-object v3, p0, Lcom/vkontakte/android/SuggestFriendsActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr p3, v3

    .line 185
    iget-object v3, p0, Lcom/vkontakte/android/SuggestFriendsActivity;->users:Ljava/util/Vector;

    invoke-virtual {v3, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/UserProfile;

    iget-object v4, p0, Lcom/vkontakte/android/SuggestFriendsActivity;->users:Ljava/util/Vector;

    invoke-virtual {v4, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/UserProfile;

    iget-boolean v4, v4, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v4, :cond_3

    move v4, v5

    :goto_0
    iput-boolean v4, v3, Lcom/vkontakte/android/UserProfile;->f:Z

    .line 186
    invoke-virtual {p0}, Lcom/vkontakte/android/SuggestFriendsActivity;->updateList()V

    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "hasSelection":Z
    iget-object v3, p0, Lcom/vkontakte/android/SuggestFriendsActivity;->users:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 193
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/vkontakte/android/SuggestFriendsActivity;->btnPanel:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    .line 194
    :cond_1
    if-nez v0, :cond_5

    iget-object v3, p0, Lcom/vkontakte/android/SuggestFriendsActivity;->btnPanel:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_5

    .line 212
    :cond_2
    :goto_2
    return-void

    .line 185
    .end local v0    # "hasSelection":Z
    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    .line 188
    .restart local v0    # "hasSelection":Z
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    .line 189
    .local v2, "u":Lcom/vkontakte/android/UserProfile;
    iget-boolean v4, v2, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    .line 195
    .end local v2    # "u":Lcom/vkontakte/android/UserProfile;
    :cond_5
    if-eqz v0, :cond_6

    .line 196
    iget-object v3, p0, Lcom/vkontakte/android/SuggestFriendsActivity;->btnPanel:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 197
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v6, v6, v3, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 198
    .local v1, "ta":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v1, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 199
    iget-object v3, p0, Lcom/vkontakte/android/SuggestFriendsActivity;->btnPanel:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 200
    iget-object v3, p0, Lcom/vkontakte/android/SuggestFriendsActivity;->btnPanel:Landroid/view/View;

    new-instance v4, Lcom/vkontakte/android/SuggestFriendsActivity$5;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/SuggestFriendsActivity$5;-><init>(Lcom/vkontakte/android/SuggestFriendsActivity;)V

    invoke-virtual {v3, v4, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 204
    .end local v1    # "ta":Landroid/view/animation/TranslateAnimation;
    :cond_6
    iget-object v3, p0, Lcom/vkontakte/android/SuggestFriendsActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 205
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v6, v6, v6, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 206
    .restart local v1    # "ta":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v1, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 207
    iget-object v3, p0, Lcom/vkontakte/android/SuggestFriendsActivity;->btnPanel:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 208
    iget-object v3, p0, Lcom/vkontakte/android/SuggestFriendsActivity;->btnPanel:Landroid/view/View;

    new-instance v4, Lcom/vkontakte/android/SuggestFriendsActivity$6;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/SuggestFriendsActivity$6;-><init>(Lcom/vkontakte/android/SuggestFriendsActivity;)V

    invoke-virtual {v3, v4, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2
.end method

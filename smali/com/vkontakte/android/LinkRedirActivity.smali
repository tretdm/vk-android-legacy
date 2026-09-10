.class public Lcom/vkontakte/android/LinkRedirActivity;
.super Landroid/app/Activity;
.source "LinkRedirActivity.java"


# instance fields
.field otherApp:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/LinkRedirActivity;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/LinkRedirActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/vkontakte/android/LinkRedirActivity;->openBrowser(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$100(Lcom/vkontakte/android/LinkRedirActivity;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/LinkRedirActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private openBrowser(Landroid/net/Uri;)V
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 700
    const-string v7, "vk"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unrecognized link: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    const-string v7, "vkontakte"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 702
    new-instance v7, Lcom/vkontakte/android/LinkRedirActivity$9;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/LinkRedirActivity$9;-><init>(Lcom/vkontakte/android/LinkRedirActivity;)V

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/LinkRedirActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 746
    :goto_0
    return-void

    .line 707
    :cond_0
    move-object v5, p1

    .line 708
    .local v5, "orig":Landroid/net/Uri;
    const-string v7, "vk.com"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 709
    new-instance v8, Landroid/net/Uri$Builder;

    invoke-direct {v8}, Landroid/net/Uri$Builder;-><init>()V

    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v7, v11, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v9, "forceHTTPS"

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "https"

    :goto_1
    invoke-virtual {v8, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "m.vk.com"

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "/away"

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "to"

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "utf"

    const-string v9, "1"

    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 713
    :goto_2
    iget-boolean v7, p0, Lcom/vkontakte/android/LinkRedirActivity;->otherApp:Z

    if-eqz v7, :cond_2

    const-string v7, "vk.com"

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "m.vk.com"

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "vkontakte.ru"

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 714
    :cond_1
    new-instance v7, Lcom/vkontakte/android/LinkRedirActivity$10;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/LinkRedirActivity$10;-><init>(Lcom/vkontakte/android/LinkRedirActivity;)V

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/LinkRedirActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 718
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/LinkRedirActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v8, v9, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v9, 0x10000

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 719
    .local v6, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_8

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-gt v7, v8, :cond_8

    .line 720
    const/4 v1, 0x0

    .line 721
    .local v1, "foundSelf":Z
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v4, v7, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 722
    .local v4, "intent":Landroid/content/Intent;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 723
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    const-string v7, "com.vkontakte.android"

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 724
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 725
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 709
    .end local v1    # "foundSelf":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    const-string v7, "http"

    goto/16 :goto_1

    .line 711
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v7, v11, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v9, "forceHTTPS"

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "https"

    :goto_4
    invoke-virtual {v8, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    goto/16 :goto_2

    :cond_5
    const-string v7, "http"

    goto :goto_4

    .line 728
    .restart local v1    # "foundSelf":Z
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v6    # "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_6
    const/4 v1, 0x1

    goto :goto_3

    .line 731
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    :cond_7
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    if-eqz v1, :cond_8

    .line 732
    const v7, 0x7f0d00d0

    invoke-static {p0, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 736
    .end local v1    # "foundSelf":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_8
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v7, v8, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v7, v11}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 738
    .local v0, "chooser":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private openChat(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    const v1, 0x77359400

    .line 756
    if-ge p1, v1, :cond_0

    .line 757
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 758
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    new-instance v1, Lcom/vkontakte/android/LinkRedirActivity$11;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/LinkRedirActivity$11;-><init>(Lcom/vkontakte/android/LinkRedirActivity;)V

    invoke-static {v0, v1}, Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/List;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V

    .line 781
    .end local v0    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_0
    return-void

    .line 771
    :cond_0
    sub-int v1, p1, v1

    new-instance v2, Lcom/vkontakte/android/LinkRedirActivity$12;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/LinkRedirActivity$12;-><init>(Lcom/vkontakte/android/LinkRedirActivity;I)V

    invoke-static {v1, v2}, Lcom/vkontakte/android/data/Messages;->getChatUsers(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V

    goto :goto_0
.end method

.method private safeParseInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 750
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 752
    :goto_0
    return v0

    .line 751
    :catch_0
    move-exception v0

    .line 752
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 46
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-nez v5, :cond_0

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 697
    :goto_0
    return-void

    .line 50
    :cond_0
    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-nez v5, :cond_1

    .line 51
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/vkontakte/android/MainActivity;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkontakte/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v16

    .line 56
    .local v16, "data":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_2

    .line 57
    const v5, 0x7f0d00d0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v42

    .line 65
    .local v42, "url":Ljava/lang/String;
    const-string v5, "content"

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 67
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "data1"

    aput-object v9, v6, v8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 68
    .local v15, "cursor":Landroid/database/Cursor;
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 69
    const-string v5, "data1"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    .line 70
    .local v40, "uid":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v14

    .line 71
    .local v14, "ctype":Ljava/lang/String;
    const-string v5, "vnd.android.cursor.item/vnd.com.vkontakte.android.profile"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 72
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 73
    .local v13, "args":Landroid/os/Bundle;
    const-string v5, "id"

    move/from16 v0, v40

    invoke-virtual {v13, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 74
    const-string v5, "ProfileFragment"

    move-object/from16 v0, p0

    invoke-static {v5, v13, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v13    # "args":Landroid/os/Bundle;
    .end local v14    # "ctype":Ljava/lang/String;
    .end local v15    # "cursor":Landroid/database/Cursor;
    .end local v40    # "uid":I
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 75
    .restart local v14    # "ctype":Ljava/lang/String;
    .restart local v15    # "cursor":Landroid/database/Cursor;
    .restart local v40    # "uid":I
    :cond_4
    :try_start_1
    const-string v5, "vnd.android.cursor.item/vnd.com.vkontakte.android.sendmsg"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 76
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/vkontakte/android/LinkRedirActivity;->openChat(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 78
    .end local v14    # "ctype":Ljava/lang/String;
    .end local v15    # "cursor":Landroid/database/Cursor;
    .end local v40    # "uid":I
    :catch_0
    move-exception v5

    goto :goto_1

    .line 82
    :cond_5
    const-string v5, "vklink"

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 83
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\?"

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v42, v5, v6

    .line 148
    :cond_6
    :goto_2
    const-string v5, "http://"

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "https://"

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "vkontakte://"

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    .line 150
    :cond_7
    invoke-static/range {v42 .. v42}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v41

    .line 151
    .local v41, "uri":Landroid/net/Uri;
    invoke-virtual/range {v41 .. v41}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    const-string v6, "vkontakte.ru"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual/range {v41 .. v41}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    const-string v6, "vk.com"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual/range {v41 .. v41}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    const-string v6, "m.vk.com"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 152
    :cond_8
    invoke-virtual/range {v41 .. v41}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v25

    .line 154
    .local v25, "path":Ljava/lang/String;
    const/16 v23, 0x0

    .line 155
    .local v23, "notDomain":Z
    const-string v5, "z"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_14

    .line 156
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "z"

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "\\/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    aget-object v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v41 .. v41}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "://vk.com"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    .line 158
    const/16 v23, 0x1

    .line 165
    :cond_9
    :goto_3
    const-string v5, "/away"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "/away.php"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 166
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/vkontakte/android/LinkRedirActivity;->openBrowser(Landroid/net/Uri;)V

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 88
    .end local v23    # "notDomain":Z
    .end local v25    # "path":Ljava/lang/String;
    .end local v41    # "uri":Landroid/net/Uri;
    :cond_b
    const-string v5, "vkontakte"

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 89
    const-string v5, "profile"

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 90
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v40

    .line 91
    .restart local v40    # "uid":I
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 92
    .restart local v13    # "args":Landroid/os/Bundle;
    const-string v5, "id"

    move/from16 v0, v40

    invoke-virtual {v13, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 94
    const-string v5, "ProfileFragment"

    move-object/from16 v0, p0

    invoke-static {v5, v13, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 96
    .end local v13    # "args":Landroid/os/Bundle;
    .end local v40    # "uid":I
    :cond_c
    const-string v5, "search"

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 97
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    .line 98
    .local v18, "dt":Ljava/lang/String;
    const-string v5, "/"

    const/4 v6, 0x4

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v31, v5, v6

    .line 99
    .local v31, "q":Ljava/lang/String;
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 100
    .restart local v13    # "args":Landroid/os/Bundle;
    const-string v5, "q"

    move-object/from16 v0, v31

    invoke-virtual {v13, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v5, "NewsSearchFragment"

    move-object/from16 v0, p0

    invoke-static {v5, v13, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 104
    .end local v13    # "args":Landroid/os/Bundle;
    .end local v18    # "dt":Ljava/lang/String;
    .end local v31    # "q":Ljava/lang/String;
    :cond_d
    const-string v5, "chat"

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 105
    const-string v5, "title"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 106
    .local v39, "title":Ljava/lang/String;
    const-string v5, "photo"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 107
    .local v27, "photo":Ljava/lang/String;
    const-string v5, "peer"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v40

    .line 108
    .restart local v40    # "uid":I
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 109
    .restart local v13    # "args":Landroid/os/Bundle;
    const-string v5, "id"

    move/from16 v0, v40

    invoke-virtual {v13, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    const-string v5, "title"

    move-object/from16 v0, v39

    invoke-virtual {v13, v5, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 111
    if-eqz v27, :cond_e

    .line 112
    const-string v5, "photo"

    move-object/from16 v0, v27

    invoke-virtual {v13, v5, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 113
    :cond_e
    new-instance v20, Landroid/content/Intent;

    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v6, Lcom/vkontakte/android/FragmentWrapperActivity;

    move-object/from16 v0, v20

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    .local v20, "intent":Landroid/content/Intent;
    const-string v5, "class"

    const-string v6, "ChatFragment"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string v5, "args"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 116
    invoke-static {}, Lcom/vkontakte/android/AppStateTracker;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-static {}, Lcom/vkontakte/android/AppStateTracker;->isInBackground()Z

    move-result v5

    if-nez v5, :cond_f

    .line 117
    invoke-static {}, Lcom/vkontakte/android/AppStateTracker;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 120
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 119
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    .line 122
    .end local v13    # "args":Landroid/os/Bundle;
    .end local v20    # "intent":Landroid/content/Intent;
    .end local v27    # "photo":Ljava/lang/String;
    .end local v39    # "title":Ljava/lang/String;
    .end local v40    # "uid":I
    :cond_10
    const-string v5, "reply"

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 123
    const-string v34, ""

    .line 124
    .local v34, "s":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/app/RemoteInput;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v44

    .line 125
    .local v44, "x":Landroid/os/Bundle;
    const-string v5, "hash"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 126
    .local v19, "hash":Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/vkontakte/android/LinkRedirActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "msg_reply_hash"

    const-string v8, ""

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 127
    .local v33, "rhash":Ljava/lang/String;
    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 129
    const-string v5, "peer"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v26

    .line 130
    .local v26, "peer":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "voice_reply"

    move-object/from16 v0, v44

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 132
    .local v37, "text":Ljava/lang/String;
    if-eqz v26, :cond_11

    .line 133
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v8, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v37

    invoke-static {v0, v1, v5, v6, v8}, Lcom/vkontakte/android/data/Messages;->send(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Lcom/vkontakte/android/Message;

    .line 136
    .end local v26    # "peer":I
    .end local v37    # "text":Ljava/lang/String;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 138
    .end local v19    # "hash":Ljava/lang/String;
    .end local v33    # "rhash":Ljava/lang/String;
    .end local v34    # "s":Ljava/lang/String;
    .end local v44    # "x":Landroid/os/Bundle;
    :cond_12
    const-string v5, "app"

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 139
    const-string v5, "pkg"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, "pkg":Ljava/lang/String;
    const-string v5, "id"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v7

    .line 141
    .local v7, "id":I
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v8, ""

    const-string v9, "push"

    move-object/from16 v6, p0

    invoke-static/range {v4 .. v9}, Lcom/vkontakte/android/data/Games;->open(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 146
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v7    # "id":I
    :cond_13
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/vkontakte/android/LinkRedirActivity;->otherApp:Z

    goto/16 :goto_2

    .line 159
    .restart local v23    # "notDomain":Z
    .restart local v25    # "path":Ljava/lang/String;
    .restart local v41    # "uri":Landroid/net/Uri;
    :cond_14
    const-string v5, "w"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 160
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "w"

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "\\/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    aget-object v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 161
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v41 .. v41}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "://vk.com"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    .line 162
    const/16 v23, 0x1

    goto/16 :goto_3

    .line 171
    :cond_15
    const-string v5, "/apps"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 172
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 173
    .restart local v13    # "args":Landroid/os/Bundle;
    const-string v6, "from_notification"

    const-string v5, "from_notification"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_16

    const/4 v5, 0x1

    :goto_5
    invoke-virtual {v13, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 174
    const-string v5, "GamesFragment"

    move-object/from16 v0, p0

    invoke-static {v5, v13, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 173
    :cond_16
    const/4 v5, 0x0

    goto :goto_5

    .line 179
    .end local v13    # "args":Landroid/os/Bundle;
    :cond_17
    const-string v5, "/friends"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 180
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 181
    .restart local v13    # "args":Landroid/os/Bundle;
    const-string v5, "id"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_18

    .line 182
    const-string v5, "id"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v7

    .line 183
    .restart local v7    # "id":I
    if-lez v7, :cond_18

    .line 184
    const-string v5, "uid"

    invoke-virtual {v13, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 186
    .end local v7    # "id":I
    :cond_18
    const-string v5, "FriendsFragment"

    move-object/from16 v0, p0

    invoke-static {v5, v13, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 190
    .end local v13    # "args":Landroid/os/Bundle;
    :cond_19
    const-string v5, "/groups"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 191
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 192
    .restart local v13    # "args":Landroid/os/Bundle;
    const-string v5, "id"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1a

    .line 193
    const-string v5, "id"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v7

    .line 194
    .restart local v7    # "id":I
    if-lez v7, :cond_1a

    .line 195
    const-string v5, "uid"

    invoke-virtual {v13, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 197
    .end local v7    # "id":I
    :cond_1a
    const-string v5, "GroupsFragment"

    move-object/from16 v0, p0

    invoke-static {v5, v13, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 201
    .end local v13    # "args":Landroid/os/Bundle;
    :cond_1b
    const-string v5, "/search"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 205
    const-string v5, "communities"

    const-string v6, "section"

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 206
    const-string v5, "GroupsFragment"

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    invoke-static {v5, v6, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 208
    :cond_1c
    const-string v5, "statuses"

    const-string v6, "section"

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 210
    const-string v5, "NewsSearchFragment"

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    invoke-static {v5, v6, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 212
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 215
    :cond_1e
    const-string v5, "/fave"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 216
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 217
    .restart local v13    # "args":Landroid/os/Bundle;
    const-string v5, "likes_posts"

    const-string v6, "section"

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 218
    const-string v5, "tab"

    const/4 v6, 0x3

    invoke-virtual {v13, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 220
    :cond_1f
    const-string v5, "likes_photo"

    const-string v6, "section"

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 221
    const-string v5, "tab"

    const/4 v6, 0x1

    invoke-virtual {v13, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 223
    :cond_20
    const-string v5, "likes_video"

    const-string v6, "section"

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 224
    const-string v5, "tab"

    const/4 v6, 0x0

    invoke-virtual {v13, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 226
    :cond_21
    const-string v5, "links"

    const-string v6, "section"

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 227
    const-string v5, "tab"

    const/4 v6, 0x4

    invoke-virtual {v13, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 229
    :cond_22
    const-string v5, "FaveFragment"

    move-object/from16 v0, p0

    invoke-static {v5, v13, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 233
    .end local v13    # "args":Landroid/os/Bundle;
    :cond_23
    const-string v5, "/mail"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_24

    const-string v5, "/im"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 234
    :cond_24
    const-string v5, "DialogsFragment"

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    invoke-static {v5, v6, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 238
    :cond_25
    const-string v5, "/feed"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 239
    const-string v5, "section"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 240
    .local v36, "section":Ljava/lang/String;
    const-string v5, "notifications"

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 241
    const-string v5, "FeedbackFragment"

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    invoke-static {v5, v6, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 245
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 243
    :cond_26
    const-string v5, "NewsfeedFragment"

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    invoke-static {v5, v6, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto :goto_6

    .line 249
    .end local v36    # "section":Ljava/lang/String;
    :cond_27
    const-string v5, "/[a-zA-Z0-9\\._]+/.+"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 250
    const-string v5, "/([a-zA-Z0-9\\._]+)/(.+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v30

    .line 251
    .local v30, "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v22

    .line 252
    .local v22, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual/range {v22 .. v22}, Ljava/util/regex/Matcher;->find()Z

    .line 253
    const/4 v5, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    .line 254
    .local v17, "domain":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 255
    .local v32, "query":Ljava/lang/String;
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 256
    .restart local v13    # "args":Landroid/os/Bundle;
    const-string v5, "q"

    move-object/from16 v0, v32

    invoke-virtual {v13, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v5, "domain"

    move-object/from16 v0, v17

    invoke-virtual {v13, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v5, "NewsSearchFragment"

    move-object/from16 v0, p0

    invoke-static {v5, v13, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 263
    .end local v13    # "args":Landroid/os/Bundle;
    .end local v17    # "domain":Ljava/lang/String;
    .end local v22    # "matcher":Ljava/util/regex/Matcher;
    .end local v30    # "ptn":Ljava/util/regex/Pattern;
    .end local v32    # "query":Ljava/lang/String;
    :cond_28
    const-string v5, "q"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2a

    const-string v5, "/wall[-0-9]+"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 264
    const-string v5, "/wall([-0-9]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v30

    .line 265
    .restart local v30    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    .line 266
    .local v21, "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->find()Z

    .line 267
    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v40

    .line 268
    .restart local v40    # "uid":I
    const-string v5, "q"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 269
    .restart local v32    # "query":Ljava/lang/String;
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 270
    .restart local v13    # "args":Landroid/os/Bundle;
    const-string v5, "q"

    move-object/from16 v0, v32

    invoke-virtual {v13, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v6, "domain"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-gez v40, :cond_29

    const-string v5, "club"

    :goto_7
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v40 .. v40}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v5, "NewsSearchFragment"

    move-object/from16 v0, p0

    invoke-static {v5, v13, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 271
    :cond_29
    const-string v5, "id"

    goto :goto_7

    .line 277
    .end local v13    # "args":Landroid/os/Bundle;
    .end local v21    # "m":Ljava/util/regex/Matcher;
    .end local v30    # "ptn":Ljava/util/regex/Pattern;
    .end local v32    # "query":Ljava/lang/String;
    .end local v40    # "uid":I
    :cond_2a
    const-string v5, "/tag[0-9]+"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 279
    const-string v5, "/tag([0-9]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v30

    .line 280
    .restart local v30    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v30

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    .line 281
    .restart local v21    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->find()Z

    .line 282
    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v40

    .line 283
    .restart local v40    # "uid":I
    new-instance v5, Lcom/vkontakte/android/api/PhotosGetAlbums;

    const/4 v6, 0x1

    move/from16 v0, v40

    invoke-direct {v5, v0, v6}, Lcom/vkontakte/android/api/PhotosGetAlbums;-><init>(IZ)V

    new-instance v6, Lcom/vkontakte/android/LinkRedirActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/vkontakte/android/LinkRedirActivity$1;-><init>(Lcom/vkontakte/android/LinkRedirActivity;)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/api/PhotosGetAlbums;->setCallback(Lcom/vkontakte/android/api/PhotosGetAlbums$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 308
    .end local v21    # "m":Ljava/util/regex/Matcher;
    .end local v30    # "ptn":Ljava/util/regex/Pattern;
    .end local v40    # "uid":I
    :cond_2b
    const-string v5, "/(photos|albums)[-0-9]+"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 310
    const-string v5, "/(?:photos|albums)([-0-9]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v30

    .line 311
    .restart local v30    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v30

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    .line 312
    .restart local v21    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->find()Z

    .line 313
    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v40

    .line 314
    .restart local v40    # "uid":I
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 315
    .restart local v13    # "args":Landroid/os/Bundle;
    const-string v5, "uid"

    move/from16 v0, v40

    invoke-virtual {v13, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 316
    const-string v5, "title"

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0d0022

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 317
    const-string v5, "PhotoAlbumsFragment"

    move-object/from16 v0, p0

    invoke-static {v5, v13, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 321
    .end local v13    # "args":Landroid/os/Bundle;
    .end local v21    # "m":Ljava/util/regex/Matcher;
    .end local v30    # "ptn":Ljava/util/regex/Pattern;
    .end local v40    # "uid":I
    :cond_2c
    const-string v5, "/(videos)[-0-9]+"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 322
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 323
    const-string v5, "/(?:videos)([-0-9]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v30

    .line 324
    .restart local v30    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v30

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    .line 325
    .restart local v21    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->find()Z

    .line 326
    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v40

    .line 327
    .restart local v40    # "uid":I
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 328
    .restart local v13    # "args":Landroid/os/Bundle;
    const-string v5, "uid"

    move/from16 v0, v40

    invoke-virtual {v13, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 330
    const-string v5, "OwnerVideoListFragment"

    move-object/from16 v0, p0

    invoke-static {v5, v13, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 334
    .end local v13    # "args":Landroid/os/Bundle;
    .end local v21    # "m":Ljava/util/regex/Matcher;
    .end local v30    # "ptn":Ljava/util/regex/Pattern;
    .end local v40    # "uid":I
    :cond_2d
    const-string v5, "/(id|wall)[-0-9]+"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 335
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 336
    const-string v5, "/(?:id|wall)([-0-9]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v30

    .line 337
    .restart local v30    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v30

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    .line 338
    .restart local v21    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->find()Z

    .line 339
    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v40

    .line 340
    .restart local v40    # "uid":I
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 341
    .restart local v13    # "args":Landroid/os/Bundle;
    const-string v5, "id"

    move/from16 v0, v40

    invoke-virtual {v13, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 342
    const-string v5, "ProfileFragment"

    move-object/from16 v0, p0

    invoke-static {v5, v13, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 346
    .end local v13    # "args":Landroid/os/Bundle;
    .end local v21    # "m":Ljava/util/regex/Matcher;
    .end local v30    # "ptn":Ljava/util/regex/Pattern;
    .end local v40    # "uid":I
    :cond_2e
    const-string v5, "/write[-0-9]+"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 347
    const-string v5, "/write([-0-9]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v30

    .line 348
    .restart local v30    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v30

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    .line 349
    .restart local v21    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->find()Z

    .line 350
    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v40

    .line 351
    .restart local v40    # "uid":I
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/vkontakte/android/LinkRedirActivity;->openChat(I)V

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 356
    .end local v21    # "m":Ljava/util/regex/Matcher;
    .end local v30    # "ptn":Ljava/util/regex/Pattern;
    .end local v40    # "uid":I
    :cond_2f
    const-string v5, "/(club|event|public)[0-9]+"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 358
    const-string v5, "/(?:club|event|public)([0-9]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v30

    .line 359
    .restart local v30    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v30

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    .line 360
    .restart local v21    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->find()Z

    .line 361
    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v5

    neg-int v0, v5

    move/from16 v40, v0

    .line 362
    .restart local v40    # "uid":I
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 363
    .restart local v13    # "args":Landroid/os/Bundle;
    const-string v5, "id"

    move/from16 v0, v40

    invoke-virtual {v13, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 364
    const-string v5, "ProfileFragment"

    move-object/from16 v0, p0

    invoke-static {v5, v13, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 368
    .end local v13    # "args":Landroid/os/Bundle;
    .end local v21    # "m":Ljava/util/regex/Matcher;
    .end local v30    # "ptn":Ljava/util/regex/Pattern;
    .end local v40    # "uid":I
    :cond_30
    const-string v5, "/board[0-9]+"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 370
    const-string v5, "/board([0-9]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v30

    .line 371
    .restart local v30    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v30

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    .line 372
    .restart local v21    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->find()Z

    .line 373
    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v40

    .line 374
    .restart local v40    # "uid":I
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 375
    .restart local v13    # "args":Landroid/os/Bundle;
    const-string v5, "gid"

    move/from16 v0, v40

    invoke-virtual {v13, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 376
    const-string v5, "BoardTopicsFragment"

    move-object/from16 v0, p0

    invoke-static {v5, v13, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 380
    .end local v13    # "args":Landroid/os/Bundle;
    .end local v21    # "m":Ljava/util/regex/Matcher;
    .end local v30    # "ptn":Ljava/util/regex/Pattern;
    .end local v40    # "uid":I
    :cond_31
    const-string v5, "/album[-0-9]+_[-0-9]+"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 381
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/vkontakte/android/LinkRedirActivity;->overridePendingTransition(II)V

    .line 382
    const-string v5, "/album([-0-9]+)_([-0-9]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v30

    .line 383
    .restart local v30    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v30

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    .line 384
    .restart local v21    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->find()Z

    .line 385
    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v24

    .line 386
    .local v24, "oid":I
    const/4 v5, 0x2

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v10

    .line 387
    .local v10, "_aid":I
    const-string v5, "0"

    const/4 v6, 0x2

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 388
    const/4 v10, -0x6

    .line 394
    :cond_32
    :goto_8
    move v11, v10

    .line 395
    .local v11, "aid":I
    new-instance v5, Lcom/vkontakte/android/APIRequest;

    const-string v6, "execute.getPhotoAlbum"

    invoke-direct {v5, v6}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    const-string v6, "owner_id"

    move/from16 v0, v24

    invoke-virtual {v5, v6, v0}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    const-string v6, "album_id"

    invoke-virtual {v5, v6, v11}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/LinkRedirActivity$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v6, v0, v11, v1}, Lcom/vkontakte/android/LinkRedirActivity$2;-><init>(Lcom/vkontakte/android/LinkRedirActivity;ILandroid/net/Uri;)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 389
    .end local v11    # "aid":I
    :cond_33
    const-string v5, "00"

    const/4 v6, 0x2

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 390
    const/4 v10, -0x7

    goto :goto_8

    .line 391
    :cond_34
    const-string v5, "000"

    const/4 v6, 0x2

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 392
    const/16 v10, -0xf

    goto :goto_8

    .line 434
    .end local v10    # "_aid":I
    .end local v21    # "m":Ljava/util/regex/Matcher;
    .end local v24    # "oid":I
    .end local v30    # "ptn":Ljava/util/regex/Pattern;
    :cond_35
    const-string v5, "/pages"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    const-string v5, "oid"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_36

    const-string v5, "p"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_36

    .line 435
    const-string v5, "oid"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v24

    .line 436
    .restart local v24    # "oid":I
    const-string v5, "p"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x5f

    const/16 v8, 0x20

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v39

    .line 437
    .restart local v39    # "title":Ljava/lang/String;
    new-instance v20, Landroid/content/Intent;

    const-class v5, Lcom/vkontakte/android/WikiViewActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 438
    .restart local v20    # "intent":Landroid/content/Intent;
    const-string v5, "oid"

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 439
    const-string v5, "title"

    move-object/from16 v0, v20

    move-object/from16 v1, v39

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    .line 441
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 445
    .end local v20    # "intent":Landroid/content/Intent;
    .end local v24    # "oid":I
    .end local v39    # "title":Ljava/lang/String;
    :cond_36
    const-string v5, "/video[-0-9]+_[0-9]+"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 446
    const-string v5, "/video([-0-9]+)_([0-9]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v30

    .line 447
    .restart local v30    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v30

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    .line 448
    .restart local v21    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->find()Z

    .line 449
    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v24

    .line 450
    .restart local v24    # "oid":I
    const/4 v5, 0x2

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v43

    .line 451
    .local v43, "vid":I
    new-instance v5, Lcom/vkontakte/android/api/VideoGetById;

    const/4 v6, 0x0

    move/from16 v0, v24

    move/from16 v1, v43

    invoke-direct {v5, v0, v1, v6}, Lcom/vkontakte/android/api/VideoGetById;-><init>(IILjava/lang/String;)V

    new-instance v6, Lcom/vkontakte/android/LinkRedirActivity$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v6, v0, v1}, Lcom/vkontakte/android/LinkRedirActivity$3;-><init>(Lcom/vkontakte/android/LinkRedirActivity;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/api/VideoGetById;->setCallback(Lcom/vkontakte/android/api/VideoGetById$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 472
    .end local v21    # "m":Ljava/util/regex/Matcher;
    .end local v24    # "oid":I
    .end local v30    # "ptn":Ljava/util/regex/Pattern;
    .end local v43    # "vid":I
    :cond_37
    const-string v5, "/topic[-0-9]+_[0-9]+"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 473
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/vkontakte/android/LinkRedirActivity;->overridePendingTransition(II)V

    .line 474
    const-string v5, "/topic([-0-9]+)_([0-9]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v30

    .line 475
    .restart local v30    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v30

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    .line 476
    .restart local v21    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->find()Z

    .line 477
    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v5

    neg-int v0, v5

    move/from16 v24, v0

    .line 478
    .restart local v24    # "oid":I
    const/4 v5, 0x2

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v38

    .line 479
    .local v38, "tid":I
    new-instance v5, Lcom/vkontakte/android/api/BoardGetTopics;

    move/from16 v0, v24

    move/from16 v1, v38

    invoke-direct {v5, v0, v1}, Lcom/vkontakte/android/api/BoardGetTopics;-><init>(II)V

    new-instance v6, Lcom/vkontakte/android/LinkRedirActivity$4;

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v38

    move-object/from16 v3, v41

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/vkontakte/android/LinkRedirActivity$4;-><init>(Lcom/vkontakte/android/LinkRedirActivity;IILandroid/net/Uri;)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/api/BoardGetTopics;->setCallback(Lcom/vkontakte/android/api/BoardGetTopics$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 504
    .end local v21    # "m":Ljava/util/regex/Matcher;
    .end local v24    # "oid":I
    .end local v30    # "ptn":Ljava/util/regex/Pattern;
    .end local v38    # "tid":I
    :cond_38
    const-string v5, "/page[-0-9]+_[0-9]+"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 505
    const-string v5, "/page([-0-9]+)_([0-9]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v30

    .line 506
    .restart local v30    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v30

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    .line 507
    .restart local v21    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->find()Z

    .line 508
    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v24

    .line 509
    .restart local v24    # "oid":I
    const/4 v5, 0x2

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v28

    .line 510
    .local v28, "pid":I
    new-instance v20, Landroid/content/Intent;

    const-class v5, Lcom/vkontakte/android/WikiViewActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 511
    .restart local v20    # "intent":Landroid/content/Intent;
    const-string v5, "oid"

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 512
    const-string v5, "pid"

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 513
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    .line 514
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 518
    .end local v20    # "intent":Landroid/content/Intent;
    .end local v21    # "m":Ljava/util/regex/Matcher;
    .end local v24    # "oid":I
    .end local v28    # "pid":I
    .end local v30    # "ptn":Ljava/util/regex/Pattern;
    :cond_39
    const-string v5, "/photo[-_0-9]+"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 520
    :try_start_2
    const-class v5, Landroid/app/Activity;

    const-string v6, "overridePendingTransition"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v45, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v45, v8, v9

    const/4 v9, 0x1

    sget-object v45, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v45, v8, v9

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 524
    :goto_9
    const-string v5, "/photo([-_0-9]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v30

    .line 525
    .restart local v30    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v30

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    .line 526
    .restart local v21    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->find()Z

    .line 527
    new-instance v5, Lcom/vkontakte/android/APIRequest;

    const-string v6, "photos.getById"

    invoke-direct {v5, v6}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    const-string v6, "photos"

    const/4 v8, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    const-string v6, "extended"

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v8}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    const-string v6, "photo_sizes"

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v8}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/LinkRedirActivity$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v6, v0, v1}, Lcom/vkontakte/android/LinkRedirActivity$5;-><init>(Lcom/vkontakte/android/LinkRedirActivity;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 559
    .end local v21    # "m":Ljava/util/regex/Matcher;
    .end local v30    # "ptn":Ljava/util/regex/Pattern;
    :cond_3a
    const-string v5, "/wall[-0-9]+_[0-9]+"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 560
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/vkontakte/android/LinkRedirActivity;->overridePendingTransition(II)V

    .line 561
    const-string v5, "wall([-0-9]+_[0-9]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v30

    .line 562
    .restart local v30    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v30

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    .line 563
    .restart local v21    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->find()Z

    .line 564
    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v29

    .line 565
    .local v29, "post":Ljava/lang/String;
    new-instance v5, Lcom/vkontakte/android/api/WallGetById;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v29, v6, v8

    invoke-direct {v5, v6}, Lcom/vkontakte/android/api/WallGetById;-><init>([Ljava/lang/String;)V

    new-instance v6, Lcom/vkontakte/android/LinkRedirActivity$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v6, v0, v1}, Lcom/vkontakte/android/LinkRedirActivity$6;-><init>(Lcom/vkontakte/android/LinkRedirActivity;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/api/WallGetById;->setCallback(Lcom/vkontakte/android/api/WallGetById$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 601
    .end local v21    # "m":Ljava/util/regex/Matcher;
    .end local v29    # "post":Ljava/lang/String;
    .end local v30    # "ptn":Ljava/util/regex/Pattern;
    :cond_3b
    const-string v5, "/audio[-0-9]+_[0-9]+"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 602
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/vkontakte/android/LinkRedirActivity;->overridePendingTransition(II)V

    .line 603
    const-string v5, "audio([-0-9]+_[0-9]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v30

    .line 604
    .restart local v30    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v30

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    .line 605
    .restart local v21    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->find()Z

    .line 606
    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v29

    .line 607
    .restart local v29    # "post":Ljava/lang/String;
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .line 608
    .local v12, "al":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 609
    new-instance v5, Lcom/vkontakte/android/api/AudioGetById;

    invoke-direct {v5, v12}, Lcom/vkontakte/android/api/AudioGetById;-><init>(Ljava/util/List;)V

    new-instance v6, Lcom/vkontakte/android/LinkRedirActivity$7;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v6, v0, v1}, Lcom/vkontakte/android/LinkRedirActivity$7;-><init>(Lcom/vkontakte/android/LinkRedirActivity;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/api/AudioGetById;->setCallback(Lcom/vkontakte/android/api/AudioGetById$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 642
    .end local v12    # "al":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v21    # "m":Ljava/util/regex/Matcher;
    .end local v29    # "post":Ljava/lang/String;
    .end local v30    # "ptn":Ljava/util/regex/Pattern;
    :cond_3c
    const-string v5, "/[A-Za-z0-9\\._]+"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3d

    if-nez v23, :cond_3d

    .line 644
    :try_start_3
    const-class v5, Landroid/app/Activity;

    const-string v6, "overridePendingTransition"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v45, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v45, v8, v9

    const/4 v9, 0x1

    sget-object v45, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v45, v8, v9

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 648
    :goto_a
    const-string v5, "/([A-Za-z0-9\\._]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v30

    .line 649
    .restart local v30    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    .line 650
    .restart local v21    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->find()Z

    .line 651
    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v35

    .line 653
    .local v35, "scrName":Ljava/lang/String;
    new-instance v5, Lcom/vkontakte/android/APIRequest;

    const-string v6, "resolveScreenName"

    invoke-direct {v5, v6}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    const-string v6, "screen_name"

    move-object/from16 v0, v35

    invoke-virtual {v5, v6, v0}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/LinkRedirActivity$8;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v6, v0, v1}, Lcom/vkontakte/android/LinkRedirActivity$8;-><init>(Lcom/vkontakte/android/LinkRedirActivity;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 695
    .end local v21    # "m":Ljava/util/regex/Matcher;
    .end local v23    # "notDomain":Z
    .end local v25    # "path":Ljava/lang/String;
    .end local v30    # "ptn":Ljava/util/regex/Pattern;
    .end local v35    # "scrName":Ljava/lang/String;
    :cond_3d
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/vkontakte/android/LinkRedirActivity;->openBrowser(Landroid/net/Uri;)V

    .line 696
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 646
    .restart local v23    # "notDomain":Z
    .restart local v25    # "path":Ljava/lang/String;
    :catch_1
    move-exception v5

    goto :goto_a

    .line 522
    :catch_2
    move-exception v5

    goto/16 :goto_9
.end method
